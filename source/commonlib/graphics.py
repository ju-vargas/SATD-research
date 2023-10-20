from source.models import matrix as mtx


def make_dictionary3(matrix, config):

    data = {
        'Class': ['A1', 'A1', 'B', 'B', 'C', 'C', 'D', 'D', 'E', 'E'],
        'Name': ['Campfire', 'FoodMarket4', 'BasketballDrive', 'RitualDance', 'BQMall', 'RaceHorses2', 'BasketballPass', 'RaceHorses', 'FourPeople', 'Johnny'],
        '1': [],
        '2': [],
        '3': [],
        'sad': []
    }

    aproximations = matrix.get_aproximations()
    for aprox in aproximations:   
        if(aprox.get_type() != "Precise"):
            data[aprox.get_type()].append(aprox.get_video("Campfire").get_BDRate(config))
            data[aprox.get_type()].append(aprox.get_video("FoodMarket4").get_BDRate(config))
            data[aprox.get_type()].append(aprox.get_video("BasketballDrive").get_BDRate(config))
            data[aprox.get_type()].append(aprox.get_video("RitualDance").get_BDRate(config))
            data[aprox.get_type()].append(aprox.get_video("BQMall").get_BDRate(config))
            data[aprox.get_type()].append(aprox.get_video("RaceHorses2").get_BDRate(config))
            data[aprox.get_type()].append(aprox.get_video("BasketballPass").get_BDRate(config))
            data[aprox.get_type()].append(aprox.get_video("RaceHorses").get_BDRate(config))
            data[aprox.get_type()].append(aprox.get_video("FourPeople").get_BDRate(config))
            data[aprox.get_type()].append(aprox.get_video("Johnny").get_BDRate(config))

    return data

    

def make_dictionary4(matrix, config):

    data = {
        'Class': ['A1', 'A1', 'B', 'B', 'C', 'C', 'D', 'D', 'E', 'E'],
        'Name': ['Campfire', 'FoodMarket4', 'BasketballDrive', 'RitualDance', 'BQMall', 'RaceHorses2', 'BasketballPass', 'RaceHorses', 'FourPeople', 'Johnny'],
        '1': [],
        '2': [],
        '3': [],
        '4': [],
        'sad': []
    }

    aproximations = matrix.get_aproximations();
    for aprox in aproximations:   
        if(aprox.get_type() != "Precise"):
            data[aprox.get_type()].append(aprox.get_video("Campfire").get_BDRate(config))
            data[aprox.get_type()].append(aprox.get_video("FoodMarket4").get_BDRate(config))
            data[aprox.get_type()].append(aprox.get_video("BasketballDrive").get_BDRate(config))
            data[aprox.get_type()].append(aprox.get_video("RitualDance").get_BDRate(config))
            data[aprox.get_type()].append(aprox.get_video("BQMall").get_BDRate(config))
            data[aprox.get_type()].append(aprox.get_video("RaceHorses2").get_BDRate(config))
            data[aprox.get_type()].append(aprox.get_video("BasketballPass").get_BDRate(config))
            data[aprox.get_type()].append(aprox.get_video("RaceHorses").get_BDRate(config))
            data[aprox.get_type()].append(aprox.get_video("FourPeople").get_BDRate(config))
            data[aprox.get_type()].append(aprox.get_video("Johnny").get_BDRate(config))

    return data

def make_dictionary2(matrix, config):

    data = {
        'Class': ['A1', 'A1', 'B', 'B', 'C', 'C', 'D', 'D', 'E', 'E'],
        'Name': ['Campfire', 'FoodMarket4', 'BasketballDrive', 'RitualDance', 'BQMall', 'RaceHorses2', 'BasketballPass', 'RaceHorses', 'FourPeople', 'Johnny'],
        '1': [],
        '2': [],
        'sad': []
    }

    aproximations = matrix.get_aproximations();
    for aprox in aproximations:   
        if(aprox.get_type() != "Precise"):
            data[aprox.get_type()].append(aprox.get_video("Campfire").get_BDRate(config))
            data[aprox.get_type()].append(aprox.get_video("FoodMarket4").get_BDRate(config))
            data[aprox.get_type()].append(aprox.get_video("BasketballDrive").get_BDRate(config))
            data[aprox.get_type()].append(aprox.get_video("RitualDance").get_BDRate(config))
            data[aprox.get_type()].append(aprox.get_video("BQMall").get_BDRate(config))
            data[aprox.get_type()].append(aprox.get_video("RaceHorses2").get_BDRate(config))
            data[aprox.get_type()].append(aprox.get_video("BasketballPass").get_BDRate(config))
            data[aprox.get_type()].append(aprox.get_video("RaceHorses").get_BDRate(config))
            data[aprox.get_type()].append(aprox.get_video("FourPeople").get_BDRate(config))
            data[aprox.get_type()].append(aprox.get_video("Johnny").get_BDRate(config))

    return data
