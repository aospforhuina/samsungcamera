.class Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder;
.super Ljava/lang/Object;
.source "CamDeviceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/device/CamDeviceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallbackHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final b:Lcom/samsung/android/camera/core2/CamDevice$ThumbnailCallback;

.field private final c:Lcom/samsung/android/camera/core2/CamDevice$PictureDepthCallback;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/samsung/android/camera/core2/CamDevice$ThumbnailCallback;Lcom/samsung/android/camera/core2/CamDevice$PictureDepthCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/samsung/android/camera/core2/CamDevice$ThumbnailCallback;",
            "Lcom/samsung/android/camera/core2/CamDevice$PictureDepthCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder;->a:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder;->b:Lcom/samsung/android/camera/core2/CamDevice$ThumbnailCallback;

    .line 4
    iput-object p3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder;->c:Lcom/samsung/android/camera/core2/CamDevice$PictureDepthCallback;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder;->a:Ljava/lang/Object;

    return-object p0
.end method

.method b()Lcom/samsung/android/camera/core2/CamDevice$PictureDepthCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder;->c:Lcom/samsung/android/camera/core2/CamDevice$PictureDepthCallback;

    return-object p0
.end method

.method c()Lcom/samsung/android/camera/core2/CamDevice$ThumbnailCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder;->b:Lcom/samsung/android/camera/core2/CamDevice$ThumbnailCallback;

    return-object p0
.end method
