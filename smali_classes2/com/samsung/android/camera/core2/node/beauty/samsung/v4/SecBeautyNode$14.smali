.class Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$14;
.super Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback;
.source "SecBeautyNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback<",
        "[",
        "Landroid/hardware/camera2/params/Face;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$14;->a:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback;-><init>()V

    return-void
.end method

.method public static synthetic b()[Landroid/hardware/camera2/params/Face;
    .locals 1

    invoke-static {}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$14;->c()[Landroid/hardware/camera2/params/Face;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic c()[Landroid/hardware/camera2/params/Face;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/hardware/camera2/params/Face;

    return-object v0
.end method


# virtual methods
.method public d([Landroid/hardware/camera2/params/Face;Ljava/lang/Void;Ljava/lang/Void;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$14;->a:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->access$000(Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;)Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase$NodeCallback;

    move-result-object p0

    sget-object p2, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/e;->a:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/e;

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNullElseGet(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/camera2/params/Face;

    invoke-interface {p0, p1}, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase$NodeCallback;->onSwFaceDetection([Landroid/hardware/camera2/params/Face;)V

    return-void
.end method

.method public bridge synthetic onPostEventFromNative(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Landroid/hardware/camera2/params/Face;

    check-cast p2, Ljava/lang/Void;

    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$14;->d([Landroid/hardware/camera2/params/Face;Ljava/lang/Void;Ljava/lang/Void;)V

    return-void
.end method
