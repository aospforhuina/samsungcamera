.class public Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;
.super Ljava/lang/Object;
.source "SceneDetectorDestroyer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer$DestroyRunnable;
    }
.end annotation


# static fields
.field private static sceneDetectorDestroyer:Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;


# instance fields
.field public isRunning:Z

.field private sceneDetector:Lvizinsight/atl/vzimageclassifier/SceneDetector;

.field private sceneDetectorLite:Lvizinsight/atl/vzimageclassifier/SceneDetector;

.field private sceneDetectorVideo:Lvizinsight/atl/vzimageclassifier/SceneDetector;

.field private threadDestroy:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->sceneDetector:Lvizinsight/atl/vzimageclassifier/SceneDetector;

    .line 3
    iput-object v0, p0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->sceneDetectorLite:Lvizinsight/atl/vzimageclassifier/SceneDetector;

    .line 4
    iput-object v0, p0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->sceneDetectorVideo:Lvizinsight/atl/vzimageclassifier/SceneDetector;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->isRunning:Z

    .line 6
    iput-object v0, p0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->threadDestroy:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$000(Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;)Lvizinsight/atl/vzimageclassifier/SceneDetector;
    .locals 0

    iget-object p0, p0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->sceneDetectorLite:Lvizinsight/atl/vzimageclassifier/SceneDetector;

    return-object p0
.end method

.method static synthetic access$002(Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;Lvizinsight/atl/vzimageclassifier/SceneDetector;)Lvizinsight/atl/vzimageclassifier/SceneDetector;
    .locals 0

    iput-object p1, p0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->sceneDetectorLite:Lvizinsight/atl/vzimageclassifier/SceneDetector;

    return-object p1
.end method

.method static synthetic access$100(Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;)Lvizinsight/atl/vzimageclassifier/SceneDetector;
    .locals 0

    iget-object p0, p0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->sceneDetector:Lvizinsight/atl/vzimageclassifier/SceneDetector;

    return-object p0
.end method

.method static synthetic access$102(Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;Lvizinsight/atl/vzimageclassifier/SceneDetector;)Lvizinsight/atl/vzimageclassifier/SceneDetector;
    .locals 0

    iput-object p1, p0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->sceneDetector:Lvizinsight/atl/vzimageclassifier/SceneDetector;

    return-object p1
.end method

.method static synthetic access$200(Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;)Lvizinsight/atl/vzimageclassifier/SceneDetector;
    .locals 0

    iget-object p0, p0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->sceneDetectorVideo:Lvizinsight/atl/vzimageclassifier/SceneDetector;

    return-object p0
.end method

.method static synthetic access$202(Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;Lvizinsight/atl/vzimageclassifier/SceneDetector;)Lvizinsight/atl/vzimageclassifier/SceneDetector;
    .locals 0

    iput-object p1, p0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->sceneDetectorVideo:Lvizinsight/atl/vzimageclassifier/SceneDetector;

    return-object p1
.end method

.method public static instance()Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;
    .locals 1

    .line 1
    sget-object v0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->sceneDetectorDestroyer:Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;

    invoke-direct {v0}, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;-><init>()V

    sput-object v0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->sceneDetectorDestroyer:Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;

    .line 3
    :cond_0
    sget-object v0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->sceneDetectorDestroyer:Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;

    return-object v0
.end method


# virtual methods
.method public destroy(Lvizinsight/atl/vzimageclassifier/SceneDetector;Lvizinsight/atl/vzimageclassifier/SceneDetector;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->isRunning:Z

    const-string v0, "JC Debug"

    const-string v1, "SceneDetectorDestroyer"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iput-object p1, p0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->sceneDetector:Lvizinsight/atl/vzimageclassifier/SceneDetector;

    .line 4
    iput-object p2, p0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->sceneDetectorLite:Lvizinsight/atl/vzimageclassifier/SceneDetector;

    .line 5
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer$DestroyRunnable;

    invoke-direct {p2, p0, p0}, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer$DestroyRunnable;-><init>(Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->threadDestroy:Ljava/lang/Thread;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const-string p0, "SceneDetectorDestroyer - destroy "

    .line 7
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public destroy(Lvizinsight/atl/vzimageclassifier/SceneDetector;Lvizinsight/atl/vzimageclassifier/SceneDetector;Lvizinsight/atl/vzimageclassifier/SceneDetector;)V
    .locals 2

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->isRunning:Z

    const-string v0, "JC Debug"

    const-string v1, "SceneDetectorDestroyer"

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iput-object p1, p0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->sceneDetector:Lvizinsight/atl/vzimageclassifier/SceneDetector;

    .line 11
    iput-object p2, p0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->sceneDetectorLite:Lvizinsight/atl/vzimageclassifier/SceneDetector;

    .line 12
    iput-object p3, p0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->sceneDetectorVideo:Lvizinsight/atl/vzimageclassifier/SceneDetector;

    .line 13
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer$DestroyRunnable;

    invoke-direct {p2, p0, p0}, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer$DestroyRunnable;-><init>(Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->threadDestroy:Ljava/lang/Thread;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const-string p0, "SceneDetectorDestroyer - destroy "

    .line 15
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public join()V
    .locals 1

    .line 1
    iget-object v0, p0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->threadDestroy:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->threadDestroy:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
