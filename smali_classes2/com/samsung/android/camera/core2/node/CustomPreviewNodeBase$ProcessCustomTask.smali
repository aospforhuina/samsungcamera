.class Lcom/samsung/android/camera/core2/node/CustomPreviewNodeBase$ProcessCustomTask;
.super Ljava/lang/Object;
.source "CustomPreviewNodeBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/CustomPreviewNodeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessCustomTask"
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/camera/core2/util/ImageBuffer;

.field private final b:Lcom/samsung/android/camera/core2/ExtraBundle;

.field final synthetic c:Lcom/samsung/android/camera/core2/node/CustomPreviewNodeBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/node/CustomPreviewNodeBase;Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/CustomPreviewNodeBase$ProcessCustomTask;->c:Lcom/samsung/android/camera/core2/node/CustomPreviewNodeBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/samsung/android/camera/core2/node/CustomPreviewNodeBase$ProcessCustomTask;->a:Lcom/samsung/android/camera/core2/util/ImageBuffer;

    .line 3
    iput-object p3, p0, Lcom/samsung/android/camera/core2/node/CustomPreviewNodeBase$ProcessCustomTask;->b:Lcom/samsung/android/camera/core2/ExtraBundle;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/CustomPreviewNodeBase$ProcessCustomTask;->c:Lcom/samsung/android/camera/core2/node/CustomPreviewNodeBase;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/node/CustomPreviewNodeBase;->f(Lcom/samsung/android/camera/core2/node/CustomPreviewNodeBase;)Lcom/samsung/android/camera/core2/util/TimeChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/TimeChecker;->a()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/CustomPreviewNodeBase$ProcessCustomTask;->c:Lcom/samsung/android/camera/core2/node/CustomPreviewNodeBase;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/CustomPreviewNodeBase$ProcessCustomTask;->a:Lcom/samsung/android/camera/core2/util/ImageBuffer;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/CustomPreviewNodeBase$ProcessCustomTask;->b:Lcom/samsung/android/camera/core2/ExtraBundle;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camera/core2/node/CustomPreviewNodeBase;->processCustomPreviewInternal(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/CustomPreviewNodeBase$ProcessCustomTask;->c:Lcom/samsung/android/camera/core2/node/CustomPreviewNodeBase;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/node/CustomPreviewNodeBase;->e(Lcom/samsung/android/camera/core2/node/CustomPreviewNodeBase;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/CustomPreviewNodeBase$ProcessCustomTask;->c:Lcom/samsung/android/camera/core2/node/CustomPreviewNodeBase;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTag()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProcessTask  fail - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 5
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/CustomPreviewNodeBase$ProcessCustomTask;->c:Lcom/samsung/android/camera/core2/node/CustomPreviewNodeBase;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/node/CustomPreviewNodeBase;->e(Lcom/samsung/android/camera/core2/node/CustomPreviewNodeBase;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 6
    throw v0
.end method
