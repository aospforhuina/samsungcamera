.class Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SuperSlowMotionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionView;->makeGuideAnimationSet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionView;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionView;->n(Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionView;)Lo5/o8;

    move-result-object p1

    iget-object p1, p1, Lo5/o8;->c:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f080460

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
