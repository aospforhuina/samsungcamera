.class Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FilterTabView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->openAddingFiltersMenu(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

.field final synthetic val$startRotationAngle:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$5;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    iput-object p2, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$5;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$5;->val$startRotationAngle:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$5;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->w(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;)Lo5/c2;

    move-result-object p1

    iget-object p1, p1, Lo5/c2;->b:Landroid/widget/ViewSwitcher;

    invoke-virtual {p1}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$5;->val$view:Landroid/view/View;

    iget p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$5;->val$startRotationAngle:I

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setRotation(F)V

    return-void
.end method
