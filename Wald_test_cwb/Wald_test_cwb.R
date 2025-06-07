# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Calculate p-values with cluster wild bootstrapping for meta-regression models Use Wald_test_cwb (wildmeta) With (In) R Software
install.packages("wildmeta")
library("wildmeta")
library("clubSandwich")
library("robumeta")
Wald_test_cwb = read.csv("https://raw.githubusercontent.com/timbulwidodostp/Wald_test_cwb/main/Wald_test_cwb/Wald_test_cwb.csv",sep = ";")
# Estimation Calculate p-values with cluster wild bootstrapping for meta-regression models Use Wald_test_cwb (wildmeta) With (In) R Software
full_model <- robu(d ~ 0 + study_type + hrs + test, studynum = study, var.eff.size = V, small = FALSE, data = Wald_test_cwb)
Wald_test_cwb <- Wald_test_cwb(full_model = full_model, constraints = constrain_equal(1:3), R = 12, seed = 20201210)
Wald_test_cwb
# Calculate p-values with cluster wild bootstrapping for meta-regression models Use Wald_test_cwb (wildmeta) With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished