.class Lcom/samsung/android/camera/core2/node/food/saliencyFood/samsung/v1/SecSaliencyFoodNode$2;
.super Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback;
.source "SecSaliencyFoodNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/food/saliencyFood/samsung/v1/SecSaliencyFoodNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback<",
        "[I",
        "Landroid/graphics/Point;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/camera/core2/node/food/saliencyFood/samsung/v1/SecSaliencyFoodNode;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/node/food/saliencyFood/samsung/v1/SecSaliencyFoodNode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/food/saliencyFood/samsung/v1/SecSaliencyFoodNode$2;->a:Lcom/samsung/android/camera/core2/node/food/saliencyFood/samsung/v1/SecSaliencyFoodNode;

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public b([ILandroid/graphics/Point;Ljava/lang/Void;)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/samsung/android/camera/core2/node/food/saliencyFood/samsung/v1/SecSaliencyFoodNode$2;->a:Lcom/samsung/android/camera/core2/node/food/saliencyFood/samsung/v1/SecSaliencyFoodNode;

    invoke-static {p3, p1, p2}, Lcom/samsung/android/camera/core2/node/food/saliencyFood/samsung/v1/SecSaliencyFoodNode;->access$000(Lcom/samsung/android/camera/core2/node/food/saliencyFood/samsung/v1/SecSaliencyFoodNode;[ILandroid/graphics/Point;)[I

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/food/saliencyFood/samsung/v1/SecSaliencyFoodNode$2;->a:Lcom/samsung/android/camera/core2/node/food/saliencyFood/samsung/v1/SecSaliencyFoodNode;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/node/food/saliencyFood/samsung/v1/SecSaliencyFoodNode;->e(Lcom/samsung/android/camera/core2/node/food/saliencyFood/samsung/v1/SecSaliencyFoodNode;)Lcom/samsung/android/camera/core2/node/food/FoodNodeBase$NodeCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/camera/core2/node/food/FoodNodeBase$NodeCallback;->onFoodResultRegion([I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPostEventFromNative(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [I

    check-cast p2, Landroid/graphics/Point;

    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/node/food/saliencyFood/samsung/v1/SecSaliencyFoodNode$2;->b([ILandroid/graphics/Point;Ljava/lang/Void;)V

    return-void
.end method
