.class Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "IntelligentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->hideDetailEnhancerButton(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->l(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;)Lo5/e6;

    move-result-object p0

    iget-object p0, p0, Lo5/e6;->d:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method
