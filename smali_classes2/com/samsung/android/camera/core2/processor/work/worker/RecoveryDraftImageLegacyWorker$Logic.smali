.class public Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;
.super Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;
.source "RecoveryDraftImageLegacyWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Logic"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic$FileLockHolder;
    }
.end annotation


# static fields
.field private static final GLOBAL_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final REAL_DRAFT_IMAGE_DELETE_DELAY_MILLIS:I = 0x1388

.field private static final RECOVERY_PROJECTION_COLUMNS:[Ljava/lang/String;

.field private static final SECURE_DIRECTORY_CAMERA_PATH:Ljava/nio/file/Path;

.field private static final TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# instance fields
.field private final mFakeDraftImageFileMatcher:Ljava/nio/file/PathMatcher;

.field private final mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "RecoveryDraftImageLegacyWorker.Logic"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/camera/core2/util/FileUtils;->e:Ljava/nio/file/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->SECURE_DIRECTORY_CAMERA_PATH:Ljava/nio/file/Path;

    .line 3
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->GLOBAL_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    const-string v1, "datetaken"

    const-string v2, "date_modified"

    const-string v3, "mime_type"

    const-string/jumbo v4, "width"

    const-string v5, "height"

    const-string v6, "orientation"

    const-string v7, "is_favorite"

    .line 4
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->RECOVERY_PROJECTION_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->GLOBAL_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v1, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Ljava/util/concurrent/locks/Lock;Lcom/samsung/android/camera/core2/util/CLog$Tag;)V

    .line 2
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object p1

    const-string v0, "regex:^(!@#\\$%\\^).+\\.(jpg|jpeg)$"

    invoke-virtual {p1, v0}, Ljava/nio/file/FileSystem;->getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->mFakeDraftImageFileMatcher:Ljava/nio/file/PathMatcher;

    .line 3
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->mTimer:Ljava/util/Timer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 2

    .line 4
    sget-object v0, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->GLOBAL_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v1, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Ljava/util/concurrent/locks/Lock;Lcom/samsung/android/camera/core2/util/CLog$Tag;)V

    .line 5
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object p1

    const-string p2, "regex:^(!@#\\$%\\^).+\\.(jpg|jpeg)$"

    invoke-virtual {p1, p2}, Ljava/nio/file/FileSystem;->getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->mFakeDraftImageFileMatcher:Ljava/nio/file/PathMatcher;

    .line 6
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->mTimer:Ljava/util/Timer;

    return-void
.end method

.method private checkIfCompleteImage(Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;)Z
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->c:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->c:Landroid/net/Uri;

    const-class v4, Ljava/lang/String;

    const-string v5, "_data"

    invoke-static {v0, v3, v5, v4}, Lcom/samsung/android/camera/core2/processor/PostProcessDBHelper;->getSingleColumnDataFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3
    sget-object p0, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array v0, v2, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->f:Ljava/nio/file/Path;

    aput-object p1, v0, v1

    const-string p1, "checkIfCompleteImage : skip recovery for resultImageFile(%s), removed on SecMP DB"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    :try_start_0
    new-array v3, v1, [Ljava/lang/String;

    .line 4
    invoke-static {v0, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->SECURE_DIRECTORY_CAMERA_PATH:Ljava/nio/file/Path;

    invoke-interface {v3, v4}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5
    sget-object v3, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v4, "checkIfCompleteImage : skip recovery for resultImageFile(%s), complete path"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-static {v3, v4, v5}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/nio/file/InvalidPathException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 6
    :catch_0
    :cond_1
    iget-object v0, p1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->b:Landroid/net/Uri;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iget-object v0, p1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->b:Landroid/net/Uri;

    const-class v3, Ljava/lang/Integer;

    const-string v4, "sef_file_type"

    invoke-static {p0, v0, v4, v3}, Lcom/samsung/android/camera/core2/processor/PostProcessDBHelper;->getSingleColumnDataFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_2

    .line 8
    sget-object p0, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array v0, v2, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->f:Ljava/nio/file/Path;

    aput-object p1, v0, v1

    const-string p1, "checkIfCompleteImage : skip recovery for resultImageFile(%s), removed on Core2 DB"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 9
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    .line 10
    sget-object v0, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->f:Ljava/nio/file/Path;

    aput-object p1, v3, v1

    aput-object p0, v3, v2

    const-string p0, "checkIfCompleteImage : skip recovery for resultImageFile(%s), complete sef file type(%d)"

    invoke-static {v0, p0, v3}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_3
    return v1
.end method

.method private deleteFakeDraftImageFile(Ljava/nio/file/Path;Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic$FileLockHolder;)V
    .locals 1

    const/4 p0, 0x1

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic$FileLockHolder;->isLocked()Z

    move-result v0

    .line 2
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic$FileLockHolder;->close()V

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    if-eqz v0, :cond_1

    new-array p0, p0, [Ljava/nio/file/Path;

    const/4 p2, 0x0

    aput-object p1, p0, p2

    .line 3
    invoke-static {p0}, Lcom/samsung/android/camera/core2/util/FileUtils;->l([Ljava/nio/file/Path;)V

    :cond_1
    return-void
.end method

.method public static synthetic f(Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->lambda$invalidateDraftImageFromSecMPDB$2(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic g(Ljava/nio/file/Path;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->lambda$recoveryDraftImageFiles$0(Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;Ljava/nio/file/Path;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->lambda$recoveryDraftImageFiles$1(Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->lambda$moveDraftImageFileToResultFilePathAndScan$3(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method private invalidateDraftImageFromSecMPDB(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "media_type"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, v0}, Lcom/samsung/android/camera/core2/processor/PostProcessDBHelper;->updateToDB(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/camera/core2/processor/work/worker/h;

    invoke-direct {p2, p0}, Lcom/samsung/android/camera/core2/processor/work/worker/h;-><init>(Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object p0, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "invalidateDraftImageFromSecMPDB is failed : updating secMPUri(%s) is failed"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private invalidateResultImageFromMPDB(Landroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/processor/PostProcessDBHelper;->deleteToDB(Landroid/content/Context;Landroid/net/Uri;)Z

    return-void
.end method

.method private synthetic lambda$invalidateDraftImageFromSecMPDB$2(Landroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/processor/PostProcessDBHelper;->deleteToDB(Landroid/content/Context;Landroid/net/Uri;)Z

    return-void
.end method

.method private static synthetic lambda$moveDraftImageFileToResultFilePathAndScan$3(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " - "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " was scanned successfully."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$recoveryDraftImageFiles$0(Ljava/nio/file/Path;)Z
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$recoveryDraftImageFiles$1(Ljava/nio/file/Path;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->mFakeDraftImageFileMatcher:Ljava/nio/file/PathMatcher;

    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/nio/file/PathMatcher;->matches(Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method

.method private moveDraftImageFileToResultFilePathAndScan(Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/nio/file/CopyOption;

    .line 1
    sget-object v2, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, p2, v1}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/String;

    invoke-interface {p2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    const/4 p2, 0x0

    sget-object v0, Lcom/samsung/android/camera/core2/processor/work/worker/g;->a:Lcom/samsung/android/camera/core2/processor/work/worker/g;

    invoke-static {p0, p1, p2, v0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    sget-object p1, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "moveDraftImageFileToResultPathAndScan is failed : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private parseFakeDraftImageFileContents(Ljava/nio/file/Path;Ljava/nio/ByteBuffer;)Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;
    .locals 13

    .line 1
    new-instance p0, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p2, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 p2, 0x1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "\\|\\|"

    .line 2
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3
    array-length v4, v3

    const/4 v5, 0x4

    if-ge v4, v5, :cond_0

    .line 4
    sget-object p1, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v4, "parseDraftImageFileContents is failed : raw string(%s) has a invalid form, contents length %d is less than 4"

    new-array v5, v0, [Ljava/lang/Object;

    aput-object p0, v5, v2

    array-length v3, v3

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, p2

    .line 6
    invoke-static {p1, v4, v5}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    return-object v1

    .line 7
    :cond_0
    aget-object p0, v3, v2

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 8
    :try_start_1
    aget-object p0, v3, v0

    new-array v0, v2, [Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v10
    :try_end_1
    .catch Ljava/nio/file/InvalidPathException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 p0, 0x3

    .line 9
    :try_start_2
    aget-object p0, v3, p0

    new-array v0, v2, [Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v12
    :try_end_2
    .catch Ljava/nio/file/InvalidPathException; {:try_start_2 .. :try_end_2} :catch_0

    .line 10
    array-length p0, v3

    if-le p0, v5, :cond_1

    aget-object p0, v3, v5

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    move-object v8, p0

    goto :goto_0

    :cond_1
    move-object v8, v1

    .line 11
    :goto_0
    array-length p0, v3

    const/4 p2, 0x5

    if-le p0, p2, :cond_2

    aget-object p0, v3, p2

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_2
    move-object v9, v1

    .line 12
    new-instance p0, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;

    move-object v6, p0

    move-object v11, p1

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 13
    sget-object p1, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseDraftImageFileContents is failed : can\'t get resultImageFile path, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    new-array p0, p2, [Ljava/nio/file/Path;

    aput-object v10, p0, v2

    .line 14
    invoke-static {p0}, Lcom/samsung/android/camera/core2/util/FileUtils;->l([Ljava/nio/file/Path;)V

    return-object v1

    :catch_1
    move-exception p0

    .line 15
    sget-object p1, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parseDraftImageFileContents is failed : can\'t get realDraftImageFile path, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object v1

    :catch_2
    move-exception p1

    .line 16
    sget-object v3, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    aput-object p1, v0, p2

    const-string p0, "parseDraftImageFileContents is failed : raw string(%s) has a invalid form, %s"

    invoke-static {v3, p0, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method private readAndRemoveFakeDraftImageFile(Ljava/nio/file/Path;Lcom/samsung/android/camera/core2/util/MutableReference;)Ljava/nio/ByteBuffer;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Lcom/samsung/android/camera/core2/util/MutableReference<",
            "Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic$FileLockHolder;",
            ">;)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    const/4 p0, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-array v3, p0, [Ljava/nio/file/OpenOption;

    .line 1
    sget-object v4, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    aput-object v4, v3, v2

    sget-object v4, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    aput-object v4, v3, v1

    invoke-static {p1, v3}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 2
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v4

    .line 3
    new-instance v5, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic$FileLockHolder;

    invoke-direct {v5, v3, v4}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic$FileLockHolder;-><init>(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileLock;)V

    .line 4
    invoke-virtual {p2, v5}, Lcom/samsung/android/camera/core2/util/MutableReference;->c(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic$FileLockHolder;->isLocked()Z

    move-result p2

    if-nez p2, :cond_0

    .line 6
    sget-object p2, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v3, "readAndRemoveFakeDraftImageFile : can\'t acquire fileLock for %s, skip reading the file"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {p2, v3, v4}, Lcom/samsung/android/camera/core2/processor/util/PLog;->w(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long p2, v4, v6

    if-gez p2, :cond_1

    .line 8
    sget-object p2, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v3, "readAndRemoveFakeDraftImageFile is failed : file size is zero"

    invoke-static {p2, v3}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object v0

    .line 9
    :cond_1
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    long-to-int p2, v4

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 10
    invoke-virtual {v3, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v4

    :goto_0
    if-lez v4, :cond_2

    .line 11
    invoke-virtual {v3, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v4

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 13
    sget-object v3, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array p0, p0, [Ljava/lang/Object;

    aput-object p1, p0, v2

    aput-object p2, p0, v1

    const-string p1, "readAndRemoveFakeDraftImageFile is failed : remove fakeDraftImageFile(%s), %s"

    invoke-static {v3, p1, p0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private recoveryAndRemoveDraftImageFile(Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;)Z
    .locals 11

    const-string v0, "recoveryAndRemoveDraftImageFile is failed : secMPUri is null"

    const-string v1, "recoveryAndRemoveDraftImageFile X"

    .line 1
    sget-object v2, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v3, "recoveryAndRemoveDraftImageFile E"

    invoke-static {v2, v3}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->checkIfCompleteImage(Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 3
    :goto_0
    iget-object p1, p1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->d:Ljava/nio/file/Path;

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->removeRealDraftImage(Ljava/nio/file/Path;)V

    .line 4
    invoke-static {v2, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v4

    :cond_0
    const/4 v3, 0x0

    .line 5
    :try_start_1
    iget-object v5, p1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->d:Ljava/nio/file/Path;

    invoke-static {v5}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v5

    const-wide/16 v7, 0x1

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    const-string v5, "recoveryAndRemoveDraftImageFile is failed : invalid realDraftImageFile(%s), file size is less than 1"

    new-array v6, v4, [Ljava/lang/Object;

    .line 6
    iget-object v7, p1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->d:Ljava/nio/file/Path;

    aput-object v7, v6, v3

    invoke-static {v2, v5, v6}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    iget-object p1, p1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->d:Ljava/nio/file/Path;

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->removeRealDraftImage(Ljava/nio/file/Path;)V

    .line 8
    invoke-static {v2, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v3

    .line 9
    :cond_1
    :try_start_2
    iget-object v5, p1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->c:Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v6, "recoveryAndRemoveDraftImageFile is failed : can\'t get refreshed resultImageFilePath"

    if-nez v5, :cond_3

    .line 10
    :try_start_3
    invoke-static {v2, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 11
    iget-object v0, p1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->d:Ljava/nio/file/Path;

    iget-object v4, p1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->f:Ljava/nio/file/Path;

    invoke-direct {p0, v0, v4}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->refreshResultImageFilePath(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12
    iget-object v4, p1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->d:Ljava/nio/file/Path;

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->moveDraftImageFileToResultFilePathAndScan(Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    goto :goto_1

    .line 13
    :cond_2
    invoke-static {v2, v6}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    :goto_1
    iget-object p1, p1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->d:Ljava/nio/file/Path;

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->removeRealDraftImage(Ljava/nio/file/Path;)V

    .line 15
    invoke-static {v2, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v3

    .line 16
    :cond_3
    :try_start_4
    iget-object v0, p1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->d:Ljava/nio/file/Path;

    iget-object v5, p1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->f:Ljava/nio/file/Path;

    invoke-direct {p0, v0, v5}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->refreshResultImageFilePath(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    if-nez v0, :cond_4

    .line 17
    invoke-static {v2, v6}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 18
    iget-object v0, p1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->c:Landroid/net/Uri;

    iget-object v4, p1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->b:Landroid/net/Uri;

    invoke-direct {p0, v0, v4}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->invalidateDraftImageFromSecMPDB(Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 19
    iget-object p1, p1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->d:Ljava/nio/file/Path;

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->removeRealDraftImage(Ljava/nio/file/Path;)V

    .line 20
    invoke-static {v2, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v3

    .line 21
    :cond_4
    :try_start_5
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v6

    iget-object v7, p1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->c:Landroid/net/Uri;

    sget-object v8, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->RECOVERY_PROJECTION_COLUMNS:[Ljava/lang/String;

    invoke-static {v5, v6, v7, v8}, Lcom/samsung/android/camera/core2/processor/PostProcessDBHelper;->createContentValuesFromUri(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v5

    .line 22
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6, v5}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 24
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/util/SDCardStorageVolManager;->getInstance()Lcom/samsung/android/camera/core2/processor/util/SDCardStorageVolManager;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10, v0}, Lcom/samsung/android/camera/core2/processor/util/SDCardStorageVolManager;->isSDCardStoragePath(Landroid/content/Context;Ljava/nio/file/Path;)Z

    move-result v9

    .line 25
    invoke-static {v8, v9}, Lcom/samsung/android/camera/core2/processor/PostProcessDBHelper;->replacedUri(Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->c:Landroid/net/Uri;

    invoke-static {v7, v6, v8, v9}, Lcom/samsung/android/camera/core2/processor/PostProcessDBHelper;->insertMediaDB(Landroid/content/Context;Landroid/content/ContentValues;Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    if-nez v7, :cond_5

    const-string v5, "recoveryAndRemoveDraftImageFile is failed : inserting to Media DB is failed for resultImageFile(%s)"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    .line 26
    invoke-static {v2, v5, v4}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iget-object v4, p1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->c:Landroid/net/Uri;

    iget-object v5, p1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->b:Landroid/net/Uri;

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->invalidateDraftImageFromSecMPDB(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 28
    iget-object v4, p1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->d:Ljava/nio/file/Path;

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->moveDraftImageFileToResultFilePathAndScan(Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 29
    iget-object p1, p1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->d:Ljava/nio/file/Path;

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->removeRealDraftImage(Ljava/nio/file/Path;)V

    .line 30
    invoke-static {v2, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v3

    .line 31
    :cond_5
    :try_start_6
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->d:Ljava/nio/file/Path;

    invoke-static {v8, v9, v7}, Lcom/samsung/android/camera/core2/util/FileUtils;->N(Landroid/content/Context;Ljava/nio/file/Path;Landroid/net/Uri;)Z

    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->c:Landroid/net/Uri;

    invoke-static {v8, v7, v9, v6}, Lcom/samsung/android/camera/core2/processor/PostProcessDBHelper;->updateMpDB(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v8, p1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->b:Landroid/net/Uri;

    invoke-static {v6, v8, v5, v7}, Lcom/samsung/android/camera/core2/processor/PostProcessDBHelper;->updateCore2DB(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/net/Uri;)V

    const-string v5, "recoveryAndRemoveDraftImageFile : recovery is done for resultImageFile(%s)"

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v0, v6, v3

    .line 34
    invoke-static {v2, v5, v6}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    .line 35
    :try_start_7
    sget-object v4, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recoveryAndRemoveDraftImageFile is failed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 36
    iget-object v2, p1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->c:Landroid/net/Uri;

    iget-object v5, p1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->b:Landroid/net/Uri;

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->invalidateDraftImageFromSecMPDB(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 37
    invoke-direct {p0, v7}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->invalidateResultImageFromMPDB(Landroid/net/Uri;)V

    .line 38
    iget-object v2, p1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->d:Ljava/nio/file/Path;

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->moveDraftImageFileToResultFilePathAndScan(Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 39
    iget-object p1, p1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->d:Ljava/nio/file/Path;

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->removeRealDraftImage(Ljava/nio/file/Path;)V

    .line 40
    invoke-static {v4, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v3

    :catch_1
    move-exception v2

    .line 41
    :try_start_8
    sget-object v5, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v6, "recoveryAndRemoveDraftImageFile is failed : invalid realDraftImageFile(%s), %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->d:Ljava/nio/file/Path;

    aput-object v8, v7, v3

    aput-object v2, v7, v4

    invoke-static {v5, v6, v7}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    iget-object v2, p1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->c:Landroid/net/Uri;

    if-eqz v2, :cond_6

    .line 43
    iget-object v0, p1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->b:Landroid/net/Uri;

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->invalidateDraftImageFromSecMPDB(Landroid/net/Uri;Landroid/net/Uri;)V

    goto :goto_2

    .line 44
    :cond_6
    invoke-static {v5, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 45
    :goto_2
    iget-object p1, p1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->d:Ljava/nio/file/Path;

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->removeRealDraftImage(Ljava/nio/file/Path;)V

    .line 46
    invoke-static {v5, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v3

    :catchall_0
    move-exception v0

    .line 47
    iget-object p1, p1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->d:Ljava/nio/file/Path;

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->removeRealDraftImage(Ljava/nio/file/Path;)V

    .line 48
    sget-object p0, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    invoke-static {p0, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 49
    throw v0
.end method

.method private recoveryDraftImageFile(Ljava/nio/file/Path;)Z
    .locals 6

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/util/MutableReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/MutableReference;-><init>(Ljava/lang/Object;)V

    .line 2
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->readAndRemoveFakeDraftImageFile(Ljava/nio/file/Path;Lcom/samsung/android/camera/core2/util/MutableReference;)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v4, "recoveryDraftImageFile is failed : can\'t get fakeDraftImageFile data from %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v4, v2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/MutableReference;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic$FileLockHolder;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->deleteFakeDraftImageFile(Ljava/nio/file/Path;Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic$FileLockHolder;)V

    return v3

    .line 5
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->parseFakeDraftImageFileContents(Ljava/nio/file/Path;Ljava/nio/ByteBuffer;)Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 6
    sget-object v1, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v4, "recoveryDraftImageFile is failed : can\'t parse fakeDraftImageFile contents from %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v4, v2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0, v1}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->recoveryAndRemoveDraftImageFile(Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 8
    sget-object v4, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v5, "recoveryDraftImageFile is failed : can\'t recovery draftImageFile %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/container/DraftImageFileInfo;->d:Ljava/nio/file/Path;

    aput-object v1, v2, v3

    invoke-static {v4, v5, v2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/MutableReference;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic$FileLockHolder;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->deleteFakeDraftImageFile(Ljava/nio/file/Path;Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic$FileLockHolder;)V

    return v2

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/MutableReference;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic$FileLockHolder;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->deleteFakeDraftImageFile(Ljava/nio/file/Path;Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic$FileLockHolder;)V

    .line 10
    throw v1
.end method

.method private recoveryDraftImageFiles()Z
    .locals 7

    const-string v0, "recoveryDraftImageFiles is failed : "

    const-string v1, "recoveryDraftImageFiles X"

    .line 1
    sget-object v2, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v3, "recoveryDraftImageFiles E"

    invoke-static {v2, v3}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 2
    :try_start_0
    sget-object v4, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->SECURE_DIRECTORY_CAMERA_PATH:Ljava/nio/file/Path;

    new-array v5, v3, [Ljava/nio/file/LinkOption;

    invoke-static {v4, v5}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v6, 0x1

    if-nez v5, :cond_0

    .line 3
    invoke-static {v2, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v6

    .line 4
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/util/SDCardStorageVolManager;->getInstance()Lcom/samsung/android/camera/core2/processor/util/SDCardStorageVolManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/camera/core2/processor/util/SDCardStorageVolManager;->refreshSDCardStorageVolumeInfo(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-array v2, v3, [Ljava/nio/file/FileVisitOption;

    .line 5
    invoke-static {v4, v6, v2}, Ljava/nio/file/Files;->walk(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 6
    :try_start_3
    sget-object v4, Lcom/samsung/android/camera/core2/processor/work/worker/j;->a:Lcom/samsung/android/camera/core2/processor/work/worker/j;

    .line 7
    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/camera/core2/processor/work/worker/i;

    invoke-direct {v5, p0}, Lcom/samsung/android/camera/core2/processor/work/worker/i;-><init>(Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;)V

    .line 8
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 9
    invoke-static {}, Ljava/util/stream/Collectors;->toUnmodifiableList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 10
    :try_start_4
    invoke-interface {v2}, Ljava/util/stream/Stream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 11
    :try_start_5
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/file/Path;

    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->isStopped()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 13
    sget-object p0, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "recoveryDraftImageFiles - walking file tree is terminated by canceled work"

    invoke-static {p0, v2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->w(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 14
    invoke-static {p0, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v3

    .line 15
    :cond_2
    :try_start_6
    invoke-direct {p0, v4}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->recoveryDraftImageFile(Ljava/nio/file/Path;)Z

    move-result v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-nez v4, :cond_1

    move v6, v3

    goto :goto_0

    .line 16
    :cond_3
    sget-object p0, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    invoke-static {p0, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v6

    :catchall_0
    move-exception p0

    if-eqz v2, :cond_4

    .line 17
    :try_start_7
    invoke-interface {v2}, Ljava/util/stream/Stream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_8
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catch_0
    move-exception p0

    .line 18
    :try_start_9
    sget-object v2, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 19
    invoke-static {v2, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v3

    :catchall_2
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 20
    :try_start_a
    sget-object v2, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 21
    invoke-static {v2, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v3

    :goto_2
    sget-object v0, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 22
    throw p0
.end method

.method private refreshResultImageFilePath(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 1

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/util/FileUtils;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/samsung/android/camera/core2/util/FileUtils;->f(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/util/FileUtils;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0
    :try_end_0
    .catch Ljava/nio/file/InvalidPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    sget-object p1, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "refreshResultImageFilePath is failed : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private removeRealDraftImage(Ljava/nio/file/Path;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic$1;-><init>(Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;Ljava/nio/file/Path;)V

    const-wide/16 p0, 0x1388

    invoke-virtual {v0, v1, p0, p1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method


# virtual methods
.method protected work()Landroidx/work/ListenableWorker$Result;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->isNotRunByWorkManager()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;->checkIfPostProcessIsOperating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->checkIfNeedBackOff()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object p0

    :goto_0
    return-object p0

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->recoveryDraftImageFiles()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object p0

    :goto_1
    return-object p0
.end method
