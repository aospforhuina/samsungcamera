.class Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$1;
.super Ljava/lang/Object;
.source "HistogramView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->onOrientationChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

.field final synthetic val$orientation:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$1;->val$orientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0704d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 4
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$1;->val$orientation:I

    if-nez v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->f(Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;)Lo5/e7;

    move-result-object v2

    iget-object v2, v2, Lo5/e7;->a:Lcom/sec/android/app/camera/shootingmode/pro/widget/Histogram;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 6
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->f(Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;)Lo5/e7;

    move-result-object v2

    iget-object v2, v2, Lo5/e7;->a:Lcom/sec/android/app/camera/shootingmode/pro/widget/Histogram;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 7
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->f(Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;)Lo5/e7;

    move-result-object v2

    iget-object v2, v2, Lo5/e7;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 8
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->f(Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;)Lo5/e7;

    move-result-object v2

    iget-object v2, v2, Lo5/e7;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 9
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-static {v2, v0}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->h(Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;I)V

    .line 10
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-static {p0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->g(Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;I)V

    goto/16 :goto_0

    .line 11
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->f(Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;)Lo5/e7;

    move-result-object v2

    iget-object v2, v2, Lo5/e7;->a:Lcom/sec/android/app/camera/shootingmode/pro/widget/Histogram;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->f(Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;)Lo5/e7;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-static {v4}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->f(Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;)Lo5/e7;

    move-result-object v4

    iget-object v4, v4, Lo5/e7;->a:Lcom/sec/android/app/camera/shootingmode/pro/widget/Histogram;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-static {v5}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->f(Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;)Lo5/e7;

    move-result-object v5

    iget-object v5, v5, Lo5/e7;->a:Lcom/sec/android/app/camera/shootingmode/pro/widget/Histogram;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-static {v4}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->f(Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;)Lo5/e7;

    move-result-object v4

    iget-object v4, v4, Lo5/e7;->a:Lcom/sec/android/app/camera/shootingmode/pro/widget/Histogram;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0704de

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setX(F)V

    .line 12
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->f(Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;)Lo5/e7;

    move-result-object v2

    iget-object v2, v2, Lo5/e7;->a:Lcom/sec/android/app/camera/shootingmode/pro/widget/Histogram;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->f(Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;)Lo5/e7;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-static {v4}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->f(Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;)Lo5/e7;

    move-result-object v4

    iget-object v4, v4, Lo5/e7;->a:Lcom/sec/android/app/camera/shootingmode/pro/widget/Histogram;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-static {v6}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->f(Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;)Lo5/e7;

    move-result-object v6

    iget-object v6, v6, Lo5/e7;->a:Lcom/sec/android/app/camera/shootingmode/pro/widget/Histogram;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0704e0

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setY(F)V

    .line 13
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->f(Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;)Lo5/e7;

    move-result-object v2

    iget-object v2, v2, Lo5/e7;->b:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->f(Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;)Lo5/e7;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-static {v4}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->f(Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;)Lo5/e7;

    move-result-object v4

    iget-object v4, v4, Lo5/e7;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-static {v6}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->f(Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;)Lo5/e7;

    move-result-object v6

    iget-object v6, v6, Lo5/e7;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-static {v4}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->f(Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;)Lo5/e7;

    move-result-object v4

    iget-object v4, v4, Lo5/e7;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0704dc

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setX(F)V

    .line 14
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->f(Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;)Lo5/e7;

    move-result-object v2

    iget-object v2, v2, Lo5/e7;->b:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->f(Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;)Lo5/e7;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-static {v4}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->f(Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;)Lo5/e7;

    move-result-object v4

    iget-object v4, v4, Lo5/e7;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-static {v6}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->f(Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;)Lo5/e7;

    move-result-object v6

    iget-object v6, v6, Lo5/e7;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0704db

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setY(F)V

    .line 15
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->h(Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;I)V

    .line 16
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->g(Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;I)V

    :goto_0
    return-void
.end method
