using System.Collections.Generic;
using Unity.Barracuda;
using UnityEngine;

public class Recommender : MonoBehaviour
{
    public NNModel modelAsset;

    private Model m_RuntimeModel;
    private static IWorker worker;
    void Start()
    {
        m_RuntimeModel = ModelLoader.Load(modelAsset);
        worker = WorkerFactory.CreateWorker(WorkerFactory.Type.CSharp, m_RuntimeModel);
        
    }
    public static float GetUserRating(User candidate)
    {
        
        Dictionary<string, Tensor> inputs = new Dictionary<string, Tensor>();
        inputs["age"] = new Tensor(1, 1, new float[]{AgeVocabulary.values[int.Parse(candidate.age)]});
        inputs["c_type"] = new Tensor(1, 1, new float[]{C_typeVocabulary.values[candidate.c_type]});
        inputs["character"] = new Tensor(1, 1, new float[]{CharacterVocabulary.values[candidate.character]});
        inputs["gender"] = new Tensor(1, 1, new float[]{GenderVocabulary.values[candidate.gender]});
        inputs["interacted_id"] = new Tensor(1, 1, new float[]{int.Parse(candidate.userId)});
        inputs["language"] = new Tensor(1, 1, new float[]{LanguageVocabulary.values[candidate.language]});
        inputs["login_time"] = new Tensor(1, 1, new float[]{Login_timeVocabulary.values[int.Parse(candidate.login_time)]});
        inputs["mode"] = new Tensor(1, 1, new float[]{ModeVocabulary.values[candidate.mode]});
        inputs["ranking"] = new Tensor(1, 1, new float[]{RankingVocabulary.values[int.Parse(candidate.ranking)]});
        inputs["user_id"] = new Tensor(1, 1, new float[]{float.Parse(DB.currentUser.userId)});

        worker.Execute(inputs);

        Tensor output = worker.PeekOutput();

        return output.ToReadOnlyArray()[0];
   }
}
