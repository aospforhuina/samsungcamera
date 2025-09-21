.class public Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;
.super Ljava/lang/Object;
.source "CamDeviceRequestOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->a:Ljava/util/Map;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->b:Z

    .line 4
    const-class v1, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->c:Ljava/util/EnumSet;

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->d:Z

    .line 6
    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Lo3/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v7, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;

    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->a:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->b:Z

    iget-object v0, p0, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->c:Ljava/util/EnumSet;

    .line 2
    invoke-virtual {v0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->d:Z

    iget-boolean v5, p0, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->e:Z

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;-><init>(Ljava/util/Map;ZLjava/util/EnumSet;ZZLo3/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-object v7

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->b:Z

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->c:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/EnumSet;->clear()V

    .line 3
    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->d:Z

    .line 4
    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->e:Z

    return-void
.end method

.method public e(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->c:Ljava/util/EnumSet;

    invoke-virtual {p0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->c:Ljava/util/EnumSet;

    invoke-virtual {p0, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public f(Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;Z)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;->l(Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;)Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->g()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    const/4 p1, 0x1

    aput-object p2, p3, p1

    const-string p1, "No pictureRequestType for picType: %s, picFormat: %s"

    invoke-static {p0, p1, p3}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, v0, p3}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->e(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;Z)V

    return-void
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->b:Z

    return-void
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->d:Z

    return-void
.end method
