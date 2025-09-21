.class Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PortraitBaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->lambda$startFaceDetectGuideAnimation$7(ZLcom/airbnb/lottie/LottieAnimationView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;

.field final synthetic val$faceGuide:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView$2;->this$0:Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView$2;->val$faceGuide:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView$2;->val$faceGuide:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->w()V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView$2;->this$0:Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->F(Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;)I

    move-result p1

    const v0, 0x7f110034

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView$2;->val$faceGuide:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
