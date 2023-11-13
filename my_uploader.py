from nemo_library import NemoLibrary

nl = NemoLibrary()
nl.synchronizeCsvColsAndImportedColumns("C:/Users/parameswaran_t/Downloads/snr21_NEMO.csv","21 SNR")
##print (nl.getImportedColumns("21 SNR"))
nl.ReUploadFile(projectname="21 SNR", filename="C:/Users/parameswaran_t/Downloads/snr21_NEMO.csv")