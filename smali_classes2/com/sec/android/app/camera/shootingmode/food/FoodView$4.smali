.class Lcom/sec/android/app/camera/shootingmode/food/FoodView$4;
.super Ljava/lang/Object;
.source "FoodView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/food/FoodView;->centerAlignEffectGuide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/food/FoodView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/food/FoodView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/food/FoodView$4;->this$0:Lcom/sec/android/app/camera/shootingmode/food/FoodView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/food/FoodView$4;->this$0:Lcom/sec/android/app/camera/shootingmode/food/FoodView;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/food/FoodView$4;->this$0:Lcom/sec/android/app/camera/shootingmode/food/FoodView;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/food/FoodView;->p(Lcom/sec/android/app/camera/shootingmode/food/FoodView;)Lo5/v4;

    move-result-object p1

    iget-object p1, p1, Lo5/v4;->b:Lcom/sec/android/app/camera/widget/ResizableRect;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/food/FoodView$4;->this$0:Lcom/sec/android/app/camera/shootingmode/food/FoodView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/food/FoodView;->getEffectGuideCoordinates()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/widget/ResizableRect;->u(Landroid/graphics/RectF;)V

    return-void
.end method
