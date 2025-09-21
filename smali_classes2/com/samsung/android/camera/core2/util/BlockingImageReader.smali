.class public Lcom/samsung/android/camera/core2/util/BlockingImageReader;
.super Ljava/lang/Object;
.source "BlockingImageReader.java"


# static fields
.field private static final k:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# instance fields
.field private final a:Ljava/util/concurrent/locks/ReentrantLock;

.field private final b:Ljava/util/concurrent/locks/Condition;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I

.field private final e:Landroid/media/ImageReader;

.field private f:Z

.field private final g:Z

.field private h:Ljava/lang/String;

.field private i:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "BlockingImageReader"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->k:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/media/ImageReader;Ljava/lang/String;Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->b:Ljava/util/concurrent/locks/Condition;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->c:Ljava/util/List;

    .line 5
    invoke-virtual {p1}, Landroid/media/ImageReader;->getMaxImages()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->d:I

    .line 6
    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->e:Landroid/media/ImageReader;

    .line 7
    iput-object p2, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->h:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->i:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    .line 9
    iput p4, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->j:I

    .line 10
    invoke-virtual {p1}, Landroid/media/ImageReader;->getImageFormat()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/camera/core2/util/ImgFormat;->l(I)Z

    move-result p2

    .line 11
    invoke-virtual {p1}, Landroid/media/ImageReader;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/media/ImageReader;->getHeight()I

    move-result p4

    mul-int/2addr p3, p4

    const/4 p4, 0x1

    const/4 v0, 0x0

    const v1, 0x2dc6c00

    if-le p3, v1, :cond_0

    move p3, p4

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    if-nez p2, :cond_1

    if-eqz p3, :cond_2

    .line 12
    :cond_1
    sget-object p2, Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;->m:Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;

    .line 13
    invoke-static {p2}, Lcom/samsung/android/camera/core2/util/MemoryUtils;->h(Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 14
    invoke-static {}, Lcom/samsung/android/camera/core2/util/MemoryUtils;->j()Z

    move-result p2

    if-eqz p2, :cond_2

    move p2, p4

    goto :goto_1

    :cond_2
    move p2, v0

    :goto_1
    iput-boolean p2, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->g:Z

    .line 15
    sget-object p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->k:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    .line 16
    invoke-virtual {p1}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/camera/core2/util/ImgFormat;->n(I)Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v1

    aput-object v1, p3, v0

    invoke-virtual {p1}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, p4

    const/4 p4, 0x2

    invoke-virtual {p1}, Landroid/media/ImageReader;->getHeight()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, p4

    const/4 p1, 0x3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p3, p1

    const-string p1, "BlockingImageReader created: Format(%s), Size(%dx%d), mNeedReleaseFreeBuffers(%b)"

    .line 17
    invoke-static {p0, p1, p3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/Image;

    .line 3
    invoke-virtual {v1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Landroid/media/Image;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const-string v2, "acquireNextImage is failed - already closed"

    if-eqz v0, :cond_0

    .line 3
    :try_start_1
    sget-object v0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->k:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/util/CLog;->p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    .line 5
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v3, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->d:I

    if-lt v0, v3, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->d()Ljava/lang/String;

    move-result-object v0

    .line 7
    sget-object v3, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->k:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v4, "acquireNextImage waiting for handout images: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 9
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->f:Z

    if-eqz v0, :cond_0

    .line 10
    invoke-static {v3, v2}, Lcom/samsung/android/camera/core2/util/CLog;->p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->e:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12
    iget-object v1, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 14
    throw v0
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->f:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->e:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 7
    throw v0
.end method

.method public c(Landroid/media/Image;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->f:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->k:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v0, "closeImage is failed - already closed"

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 5
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 7
    iget-object p1, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 8
    iget-boolean p1, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->g:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 9
    sget-object p1, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->k:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v0, "discardFreeBuffers - Format(%s), Size(%dx%d)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->e:Landroid/media/ImageReader;

    .line 10
    invoke-virtual {v3}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/camera/core2/util/ImgFormat;->n(I)Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->e:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->e:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 11
    invoke-static {p1, v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    iget-object p1, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->e:Landroid/media/ImageReader;

    invoke-virtual {p1}, Landroid/media/ImageReader;->discardFreeBuffers()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 14
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "closeImage is failed : image is not getting from this imageReader or already is closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 15
    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 16
    throw p1
.end method

.method public e()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->e:Landroid/media/ImageReader;

    invoke-virtual {p0}, Landroid/media/ImageReader;->getHeight()I

    move-result p0

    return p0
.end method

.method public f()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->e:Landroid/media/ImageReader;

    invoke-virtual {p0}, Landroid/media/ImageReader;->getImageFormat()I

    move-result p0

    return p0
.end method

.method public g()Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->e:Landroid/media/ImageReader;

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->h:Ljava/lang/String;

    return-object p0
.end method

.method public i()Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->i:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    return-object p0
.end method

.method public j()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->j:I

    return p0
.end method

.method public k()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->e:Landroid/media/ImageReader;

    invoke-virtual {p0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public l()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->e:Landroid/media/ImageReader;

    invoke-virtual {p0}, Landroid/media/ImageReader;->getWidth()I

    move-result p0

    return p0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 4
    throw v0
.end method

.method public n(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->e:Landroid/media/ImageReader;

    invoke-virtual {p0, p1, p2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->h:Ljava/lang/String;

    return-void
.end method

.method public p(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->j:I

    return-void
.end method
