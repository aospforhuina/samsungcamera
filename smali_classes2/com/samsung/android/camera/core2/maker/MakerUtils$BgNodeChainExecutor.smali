.class public Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;
.super Lcom/samsung/android/camera/core2/maker/MakerUtils$NodeChainExecutorBase;
.source "MakerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/maker/MakerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BgNodeChainExecutor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor$BackgroundNodeChainTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/camera/core2/maker/MakerUtils$NodeChainExecutorBase<",
        "Landroid/media/Image;",
        "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final h:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# instance fields
.field private final b:Landroid/util/Size;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/core2/node/Node$CoreInterface<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;

.field private e:Lcom/samsung/android/camera/core2/util/ImageBuffer;

.field private f:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "BgNodeChainExecutor"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;->h:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/camera/core2/node/NodeChain;Landroid/util/Size;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/util/Size;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/MakerUtils$NodeChainExecutorBase;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;->c:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;->d:Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;->g:Z

    .line 5
    iput-object p2, p0, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;->b:Landroid/util/Size;

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/node/NodeChain;->g()Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/node/NodeChain$Key;->getPortType()Lcom/samsung/android/camera/core2/node/Node$PortType;

    move-result-object p2

    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/node/NodeChain;->j()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/node/Node;

    .line 8
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;->c:Ljava/util/List;

    invoke-virtual {v0, p2}, Lcom/samsung/android/camera/core2/node/Node;->getCoreInterface(Lcom/samsung/android/camera/core2/node/Node$PortType;)Lcom/samsung/android/camera/core2/node/Node$CoreInterface;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic b(Landroid/media/Image;Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;->h(Landroid/media/Image;Lcom/samsung/android/camera/core2/util/ImageInfo;)V

    return-void
.end method

.method static bridge synthetic c(Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;->e:Lcom/samsung/android/camera/core2/util/ImageBuffer;

    return-object p0
.end method

.method static bridge synthetic d()Lcom/samsung/android/camera/core2/util/CLog$Tag;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;->h:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-object v0
.end method

.method private e()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/node/Node$CoreInterface;

    .line 2
    invoke-interface {v0}, Lcom/samsung/android/camera/core2/node/Node$CoreInterface;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic h(Landroid/media/Image;Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->x(Landroid/util/Size;)V

    .line 2
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->t(I)V

    .line 3
    invoke-virtual {p0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->A(J)V

    .line 4
    new-instance v0, Lcom/samsung/android/camera/core2/util/StrideInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/core2/util/StrideInfo;-><init>(Landroid/media/Image;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->z(Lcom/samsung/android/camera/core2/util/StrideInfo;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;->d:Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;

    sget-object v1, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;->h:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;->b(Lcom/samsung/android/camera/core2/util/CLog$Tag;J)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;->e:Lcom/samsung/android/camera/core2/util/ImageBuffer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/DirectBuffer;->release()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;->e:Lcom/samsung/android/camera/core2/util/ImageBuffer;

    .line 5
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/camera/core2/maker/MakerUtils$NodeChainExecutorBase;->a()V

    return-void
.end method

.method public declared-synchronized f(Landroid/media/Image;Lcom/samsung/android/camera/core2/ExtraBundle;)Ljava/lang/Void;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;->f:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;->d:Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;->e:Lcom/samsung/android/camera/core2/util/ImageBuffer;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/samsung/android/camera/core2/maker/pd;

    invoke-direct {v0, p1}, Lcom/samsung/android/camera/core2/maker/pd;-><init>(Landroid/media/Image;)V

    invoke-static {v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->e(Ljava/util/function/Consumer;)Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;->b:Landroid/util/Size;

    invoke-static {v2}, Lcom/samsung/android/camera/core2/util/ImageUtils;->getNV21BufferSize(Landroid/util/Size;)I

    move-result v2

    invoke-static {v2, v0}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->a(ILcom/samsung/android/camera/core2/util/ImageInfo;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;->e:Lcom/samsung/android/camera/core2/util/ImageBuffer;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;->e:Lcom/samsung/android/camera/core2/util/ImageBuffer;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/BufferBase;->rewind()V

    .line 7
    new-instance v0, Lcom/samsung/android/camera/core2/util/StrideInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/camera/core2/util/StrideInfo;-><init>(Landroid/media/Image;)V

    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/StrideInfo;->isPackedFormat()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;->e:Lcom/samsung/android/camera/core2/util/ImageBuffer;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->f(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;->e:Lcom/samsung/android/camera/core2/util/ImageBuffer;

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/ImageUtils;->convertFlexibleYuvToPackedNV21(Landroid/media/Image;Lcom/samsung/android/camera/core2/util/ImageBuffer;)Z

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;->d:Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;

    new-instance v0, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor$BackgroundNodeChainTask;

    invoke-direct {v0, p0, p2, v1}, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor$BackgroundNodeChainTask;-><init>(Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;Lcom/samsung/android/camera/core2/ExtraBundle;Lcom/samsung/android/camera/core2/maker/qd;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;->c(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;->f:Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 12
    :try_start_2
    sget-object p2, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;->h:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute fail - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    :cond_3
    :goto_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public g()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;->g:Z

    return p0
.end method

.method public i(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;->g:Z

    return-void
.end method
