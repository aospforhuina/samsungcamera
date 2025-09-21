.class Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer$DestroyRunnable;
.super Ljava/lang/Object;
.source "SceneDetectorDestroyer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DestroyRunnable"
.end annotation


# instance fields
.field sdd:Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;

.field final synthetic this$0:Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;


# direct methods
.method public constructor <init>(Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer$DestroyRunnable;->this$0:Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer$DestroyRunnable;->sdd:Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer$DestroyRunnable;->sdd:Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->isRunning:Z

    const-string v0, "JC Debug"

    const-string v1, "SceneDetectorDestroyer:runnable thread started"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer$DestroyRunnable;->this$0:Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;

    invoke-static {v1}, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->access$000(Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;)Lvizinsight/atl/vzimageclassifier/SceneDetector;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer$DestroyRunnable;->sdd:Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;

    invoke-static {v1}, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->access$000(Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;)Lvizinsight/atl/vzimageclassifier/SceneDetector;

    move-result-object v1

    invoke-virtual {v1}, Lvizinsight/atl/vzimageclassifier/SceneDetector;->release()V

    .line 6
    iget-object v1, p0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer$DestroyRunnable;->sdd:Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;

    invoke-static {v1, v2}, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->access$002(Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;Lvizinsight/atl/vzimageclassifier/SceneDetector;)Lvizinsight/atl/vzimageclassifier/SceneDetector;

    .line 7
    :cond_1
    iget-object v1, p0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer$DestroyRunnable;->this$0:Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;

    invoke-static {v1}, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->access$100(Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;)Lvizinsight/atl/vzimageclassifier/SceneDetector;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    iget-object v1, p0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer$DestroyRunnable;->sdd:Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;

    invoke-static {v1}, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->access$100(Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;)Lvizinsight/atl/vzimageclassifier/SceneDetector;

    move-result-object v1

    invoke-virtual {v1}, Lvizinsight/atl/vzimageclassifier/SceneDetector;->release()V

    .line 9
    iget-object v1, p0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer$DestroyRunnable;->sdd:Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;

    invoke-static {v1, v2}, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->access$102(Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;Lvizinsight/atl/vzimageclassifier/SceneDetector;)Lvizinsight/atl/vzimageclassifier/SceneDetector;

    .line 10
    :cond_2
    iget-object v1, p0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer$DestroyRunnable;->this$0:Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;

    invoke-static {v1}, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->access$200(Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;)Lvizinsight/atl/vzimageclassifier/SceneDetector;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 11
    iget-object v1, p0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer$DestroyRunnable;->sdd:Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;

    invoke-static {v1}, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->access$200(Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;)Lvizinsight/atl/vzimageclassifier/SceneDetector;

    move-result-object v1

    invoke-virtual {v1}, Lvizinsight/atl/vzimageclassifier/SceneDetector;->release()V

    .line 12
    iget-object v1, p0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer$DestroyRunnable;->sdd:Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;

    invoke-static {v1, v2}, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->access$202(Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;Lvizinsight/atl/vzimageclassifier/SceneDetector;)Lvizinsight/atl/vzimageclassifier/SceneDetector;

    .line 13
    :cond_3
    iget-object p0, p0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer$DestroyRunnable;->sdd:Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->isRunning:Z

    const-string p0, "SceneDetectorDestroyer: Release completed in runnable thread"

    .line 14
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
