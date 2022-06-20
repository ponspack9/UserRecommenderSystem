from labels import DAMAGE, TANK, HEALER


def get_rating(field, user, interacted_user):
    value_user = user[field]
    value_interacted = interacted_user[field]

    if field == "age":
        return get_age_rating(value_user, value_interacted)

    if field == "gender":
        return get_gender_rating(value_user, value_interacted)

    if field == "language":
        return get_language_rating(value_user, value_interacted)

    if field == "login_time":
        return get_login_rating(value_user, value_interacted)

    if field == "character":
        return get_character_rating(value_user, value_interacted)

    if field == "c_type":
        return get_c_type_rating(value_user, value_interacted)

    if field == "mode":
        return get_mode_rating(value_user, value_interacted)

    if field == "ranking":
        return get_ranking_rating(value_user, value_interacted)


# rating from [0,10]
def get_age_rating(uvalue, ivalue):
    difference = min(abs(uvalue - ivalue), 10)
    return 10 - difference


def get_gender_rating(uvalue, ivalue):
    male = "Male"
    female = "Female"

    if uvalue == male:
        if ivalue == female:
            return 10
        return 7.5

    if uvalue == female:
        if ivalue == female:
            return 10
        return 7.5
    return 7.5


def get_language_rating(uvalue, ivalue):
    if uvalue == ivalue:
        return 50
    return 0


# 90 minutes max difference
def get_login_rating(uvalue, ivalue):
    max_diff = 90
    difference = min(abs(uvalue - ivalue), max_diff)
    rating = difference / max_diff
    return (1 - rating) * 10


def get_character_rating(uvalue, ivalue):
    if uvalue == ivalue:
        return 0

    if uvalue in DAMAGE:
        if ivalue in DAMAGE:
            return 3.3
        return 10
    if uvalue in TANK:
        if ivalue in TANK:
            return 6.6
        return 10
    if uvalue in HEALER:
        if ivalue in HEALER:
            return 6.6
        return 10


def get_c_type_rating(uvalue, ivalue):
    if uvalue == "Damage":
        if ivalue == "Damage":
            return 6.6
        return 10
    if uvalue == "Tank":
        if ivalue == "Tank":
            return 6.6
        return 10
    if uvalue == "Healer":
        if ivalue == "Healer":
            return 6.6
        return 10


def get_mode_rating(uvalue, ivalue):
    if uvalue == ivalue:
        return 10
    return 0


def get_ranking_rating(uvalue, ivalue):
    max_diff = 1000
    difference = min(abs(uvalue - ivalue), max_diff)
    rating = difference / max_diff
    return (1 - rating) * 10
