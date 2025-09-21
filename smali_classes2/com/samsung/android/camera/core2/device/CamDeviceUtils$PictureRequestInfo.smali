.class Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;
.super Ljava/lang/Object;
.source "CamDeviceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/device/CamDeviceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PictureRequestInfo"
.end annotation


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:Landroid/view/Surface;

.field private final d:Landroid/view/Surface;

.field private final e:Landroid/view/Surface;

.field private final f:Landroid/view/Surface;

.field private final g:Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder<",
            "*>;"
        }
    .end annotation
.end field

.field private final h:I

.field private final i:I


# direct methods
.method constructor <init>(IZLandroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroid/view/Surface;",
            "Landroid/view/Surface;",
            "Landroid/view/Surface;",
            "Landroid/view/Surface;",
            "Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder<",
            "*>;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;->a:I

    .line 3
    iput-boolean p2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;->b:Z

    .line 4
    iput-object p3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;->c:Landroid/view/Surface;

    .line 5
    iput-object p4, p0, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;->d:Landroid/view/Surface;

    .line 6
    iput-object p5, p0, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;->e:Landroid/view/Surface;

    .line 7
    iput-object p6, p0, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;->f:Landroid/view/Surface;

    .line 8
    iput-object p7, p0, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;->g:Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder;

    .line 9
    iput p8, p0, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;->h:I

    .line 10
    iput p9, p0, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;->i:I

    return-void
.end method


# virtual methods
.method a()Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;->g:Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder;

    return-object p0
.end method

.method b()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;->h:I

    return p0
.end method

.method c()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;->a:I

    return p0
.end method

.method d()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;->i:I

    return p0
.end method

.method e()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;->b:Z

    return p0
.end method

.method f(Landroid/view/Surface;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;->c:Landroid/view/Surface;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;->d:Landroid/view/Surface;

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;->e:Landroid/view/Surface;

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;->f:Landroid/view/Surface;

    .line 4
    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
