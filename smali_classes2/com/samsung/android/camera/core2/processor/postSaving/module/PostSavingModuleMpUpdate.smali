.class public Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleMpUpdate;
.super Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModule;
.source "PostSavingModuleMpUpdate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModule;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "PostSavingModuleMpUpdate"

    return-object p0
.end method

.method public runModule(Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModule;->mExtraSavingInfoContainer:Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;

    if-eqz p0, :cond_0

    move-object p1, p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->getResultFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->getMpUri()Landroid/net/Uri;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->getSecMpUri()Landroid/net/Uri;

    move-result-object v2

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->getContentValues()Landroid/content/ContentValues;

    move-result-object v3

    .line 7
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/camera/core2/processor/PostProcessDBHelper;->updateMpDB(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 8
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/processor/PostProcessDBHelper;->putResultFileDataToContentValues(Ljava/nio/file/Path;Landroid/content/ContentValues;)V

    const/4 p0, 0x1

    .line 9
    invoke-virtual {p1, p0}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->setFileWriteDone(Z)V

    return-void
.end method
