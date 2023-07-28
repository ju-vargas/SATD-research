        #create dictionary for aproximation


        print('APROXIMATION:', aproximation)
        aprox_type = aproximation.split("-")[2]
        aprox_folder = folder + aproximation + "/"
        
        aprox = apx.Aproximation(matrix.get_size(), aprox_type, aprox_folder)
        
        #fill aproximation videos list
        videos_list = pl.list_videos(aprox.get_path())

        path = aprox.get_path()
        for item in videos_list:
            path_item = path + item+'/'+config

            log_qps_path = os.listdir(path_item)

            for log_qp in log_qps_path:

                #add calls in dictionary

                gprof_test = vvcpy.GprofDF().read_file(path_item + '/' + log_qp)
                gprof_test = gprof_test.sort_values(by='calls', ascending=False)


    
                #display(gprof_test[gprof_test['function'].str.contains('xCalcHADs', na = False)])
                gprof_test = gprof_test[gprof_test['function'].str.contains('xCalcHADs', na = False)].iloc[:, [0,3,7,8,9]]

                functions = gprof_test['function'].tolist()
                calls = gprof_test['calls'].tolist()

                res = dict(zip(functions, calls))

                display(gprof_test)
                print(functions)
                print(calls)
                print(res)


