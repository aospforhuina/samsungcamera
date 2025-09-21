.class Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$1;
.super Ljava/lang/Object;
.source "PanoramaNode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$1;->a:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$1;->a:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;->f(Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    sget-object v0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$4;->a:[I

    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$1;->a:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;

    invoke-static {v1}, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;->i(Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;)Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$1;->a:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;->e(Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;)Lcom/samsung/android/camera/core2/util/BufferDeque;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/BufferDeque;->h()Lcom/samsung/android/camera/core2/util/BufferDeque$BufferSlot;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/BufferDeque$BufferSlot;->a()Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 5
    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$1;->a:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;

    invoke-static {v2}, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;->i(Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;)Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;->b:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;

    if-ne v2, v3, :cond_1

    .line 6
    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$1;->a:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;

    invoke-static {v2, v1}, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;->n(Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;Lcom/samsung/android/camera/core2/util/ImageBuffer;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$1;->a:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;

    invoke-static {v2, v1}, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;->m(Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;Lcom/samsung/android/camera/core2/util/ImageBuffer;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$1;->a:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;

    sget-object v2, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;->d:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;->l(Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;)V

    .line 9
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$1;->a:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;

    invoke-static {v1}, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;->e(Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;)Lcom/samsung/android/camera/core2/util/BufferDeque;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/camera/core2/util/BufferDeque;->f(Lcom/samsung/android/camera/core2/util/BufferDeque$BufferSlot;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 10
    :try_start_2
    invoke-static {}, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;->q()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PanoramaPreviewTask fail - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$1;->a:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;->f(Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$1;->a:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;->f(Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 12
    throw v0
.end method
