.class Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$16;
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
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$16;->a:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Void;)V
    .locals 0

    const/4 p3, 0x1

    .line 1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$16;->a:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->access$200(Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;)Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase$NodeCallback;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase$NodeCallback;->onPreviewProcessResult(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPostEventFromNative(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$16;->b(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Void;)V

    return-void
.end method
