.class Lcom/sec/android/app/camera/widget/NightShutter$d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NightShutter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/NightShutter;->A(ILandroid/animation/TimeInterpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sec/android/app/camera/widget/NightShutter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/NightShutter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/NightShutter$d;->a:Lcom/sec/android/app/camera/widget/NightShutter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "NightShutter"

    const-string v0, "startFillMoonAnimation onAnimationStart"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/NightShutter$d;->a:Lcom/sec/android/app/camera/widget/NightShutter;

    invoke-static {p1}, Lcom/sec/android/app/camera/widget/NightShutter;->k(Lcom/sec/android/app/camera/widget/NightShutter;)Lo5/i9;

    move-result-object p1

    iget-object p1, p1, Lo5/i9;->a:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/NightShutter$d;->a:Lcom/sec/android/app/camera/widget/NightShutter;

    invoke-static {p0}, Lcom/sec/android/app/camera/widget/NightShutter;->k(Lcom/sec/android/app/camera/widget/NightShutter;)Lo5/i9;

    move-result-object p0

    iget-object p0, p0, Lo5/i9;->b:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
