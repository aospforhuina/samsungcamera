.class Lcom/sec/android/app/camera/shootingmode/food/FoodView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FoodView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/food/FoodView;->startEffectGuideAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/food/FoodView;

.field final synthetic val$layoutParams:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/food/FoodView;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/food/FoodView$2;->this$0:Lcom/sec/android/app/camera/shootingmode/food/FoodView;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/food/FoodView$2;->val$layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/food/FoodView$2;->val$layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/food/FoodView$2;->this$0:Lcom/sec/android/app/camera/shootingmode/food/FoodView;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/food/FoodView;->o(Lcom/sec/android/app/camera/shootingmode/food/FoodView;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/food/FoodView$2;->val$layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/food/FoodView$2;->this$0:Lcom/sec/android/app/camera/shootingmode/food/FoodView;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/food/FoodView;->o(Lcom/sec/android/app/camera/shootingmode/food/FoodView;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/food/FoodView$2;->this$0:Lcom/sec/android/app/camera/shootingmode/food/FoodView;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/food/FoodView;->p(Lcom/sec/android/app/camera/shootingmode/food/FoodView;)Lo5/v4;

    move-result-object p1

    iget-object p1, p1, Lo5/v4;->b:Lcom/sec/android/app/camera/widget/ResizableRect;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/food/FoodView$2;->val$layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/food/FoodView$2;->this$0:Lcom/sec/android/app/camera/shootingmode/food/FoodView;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/food/FoodView;->access$000(Lcom/sec/android/app/camera/shootingmode/food/FoodView;)Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/shootingmode/food/FoodContract$Presenter;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/food/FoodView$2;->this$0:Lcom/sec/android/app/camera/shootingmode/food/FoodView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/food/FoodView;->getEffectGuideCoordinates()Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {p1, v1, v0}, Lcom/sec/android/app/camera/shootingmode/food/FoodContract$Presenter;->onFoodRectResize(ILandroid/graphics/RectF;)V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/food/FoodView$2;->this$0:Lcom/sec/android/app/camera/shootingmode/food/FoodView;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/food/FoodView;->p(Lcom/sec/android/app/camera/shootingmode/food/FoodView;)Lo5/v4;

    move-result-object p0

    iget-object p0, p0, Lo5/v4;->b:Lcom/sec/android/app/camera/widget/ResizableRect;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/food/FoodView$2;->val$layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/food/FoodView$2;->this$0:Lcom/sec/android/app/camera/shootingmode/food/FoodView;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/food/FoodView;->o(Lcom/sec/android/app/camera/shootingmode/food/FoodView;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/food/FoodView$2;->val$layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/food/FoodView$2;->this$0:Lcom/sec/android/app/camera/shootingmode/food/FoodView;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/food/FoodView;->o(Lcom/sec/android/app/camera/shootingmode/food/FoodView;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/food/FoodView$2;->this$0:Lcom/sec/android/app/camera/shootingmode/food/FoodView;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/food/FoodView;->p(Lcom/sec/android/app/camera/shootingmode/food/FoodView;)Lo5/v4;

    move-result-object p1

    iget-object p1, p1, Lo5/v4;->b:Lcom/sec/android/app/camera/widget/ResizableRect;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/food/FoodView$2;->val$layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/food/FoodView$2;->this$0:Lcom/sec/android/app/camera/shootingmode/food/FoodView;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/food/FoodView;->access$100(Lcom/sec/android/app/camera/shootingmode/food/FoodView;)Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/shootingmode/food/FoodContract$Presenter;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/food/FoodView$2;->this$0:Lcom/sec/android/app/camera/shootingmode/food/FoodView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/food/FoodView;->getEffectGuideCoordinates()Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {p1, v1, v0}, Lcom/sec/android/app/camera/shootingmode/food/FoodContract$Presenter;->onFoodRectResize(ILandroid/graphics/RectF;)V

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/food/FoodView$2;->this$0:Lcom/sec/android/app/camera/shootingmode/food/FoodView;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/food/FoodView;->access$200(Lcom/sec/android/app/camera/shootingmode/food/FoodView;)Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/shootingmode/food/FoodContract$Presenter;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/food/FoodView$2;->this$0:Lcom/sec/android/app/camera/shootingmode/food/FoodView;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/food/FoodView;->o(Lcom/sec/android/app/camera/shootingmode/food/FoodView;)F

    move-result v0

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/shootingmode/food/FoodContract$Presenter;->onFoodRectAnimationEnd(F)V

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/food/FoodView$2;->this$0:Lcom/sec/android/app/camera/shootingmode/food/FoodView;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/food/FoodView;->p(Lcom/sec/android/app/camera/shootingmode/food/FoodView;)Lo5/v4;

    move-result-object p0

    iget-object p0, p0, Lo5/v4;->b:Lcom/sec/android/app/camera/widget/ResizableRect;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method
