.class public Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleRemoveTemp;
.super Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModule;
.source "PostSavingModuleRemoveTemp.java"


# static fields
.field public static final DRAFT_FILE_DELETE_DELAY_MILLIS:I = 0x2710

.field protected static final TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# instance fields
.field private final mDraftImageFileDeleteTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "PostSavingModuleRemoveTemp"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleRemoveTemp;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModule;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleRemoveTemp;->mDraftImageFileDeleteTimer:Ljava/util/Timer;

    return-void
.end method

.method static bridge synthetic a(Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleRemoveTemp;Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleRemoveTemp;->deleteRealDraftFile(Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)V

    return-void
.end method

.method private deleteFilesExceptRealDraft(Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->getRecoveryDataFilePath()Ljava/nio/file/Path;

    move-result-object p0

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->getRecoveryWatermarkBitmapFilePath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/nio/file/Path;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v3, 0x1

    aput-object p1, v1, v3

    .line 3
    invoke-static {v1}, Lcom/samsung/android/camera/core2/util/FileUtils;->l([Ljava/nio/file/Path;)V

    .line 4
    sget-object v1, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleRemoveTemp;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v4, "deleteFilesExceptRealDraft (%s, %s)"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    aput-object p1, v0, v3

    invoke-static {v1, v4, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->v(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/util/FileUtils;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6
    sget-object p1, Lcom/samsung/android/camera/core2/util/FileUtils;->h:Ljava/nio/file/Path;

    invoke-interface {p1, p0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    const-string p1, "deleteFilesExceptRealDraft - tempImageDirPath(%s)"

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v2

    .line 7
    invoke-static {v1, p1, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->v(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array p1, v2, [Ljava/nio/file/LinkOption;

    .line 8
    invoke-static {p0, p1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "deleteFilesExceptRealDraft - tempImageDirPath delete"

    .line 9
    invoke-static {v1, p1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    new-array p1, v2, [Ljava/lang/Boolean;

    .line 10
    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/FileUtils;->k(Ljava/nio/file/Path;[Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 11
    sget-object p1, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleRemoveTemp;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteFilesExceptRealDraft is failed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/camera/core2/util/CLog;->p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private deleteRealDraftFile(Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->getRealDraftImageFilePath()Ljava/nio/file/Path;

    move-result-object p0

    .line 2
    sget-object p1, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleRemoveTemp;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v3, "deleteRealDraftFile (%s)"

    invoke-static {p1, v3, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->v(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array p1, v0, [Ljava/nio/file/Path;

    aput-object p0, p1, v2

    .line 3
    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/FileUtils;->l([Ljava/nio/file/Path;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "PostSavingModuleRemoveTemp"

    return-object p0
.end method

.method public runModule(Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleRemoveTemp;->deleteFilesExceptRealDraft(Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleRemoveTemp;->mDraftImageFileDeleteTimer:Ljava/util/Timer;

    new-instance v1, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleRemoveTemp$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleRemoveTemp$1;-><init>(Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleRemoveTemp;Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)V

    const-wide/16 p0, 0x2710

    invoke-virtual {v0, v1, p0, p1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
