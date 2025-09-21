.class Lcom/airbnb/lottie/n$a;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/airbnb/lottie/n;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/n;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/n$a;->a:Lcom/airbnb/lottie/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/airbnb/lottie/n$a;->a:Lcom/airbnb/lottie/n;

    invoke-static {p1}, Lcom/airbnb/lottie/n;->n(Lcom/airbnb/lottie/n;)Lp/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/airbnb/lottie/n$a;->a:Lcom/airbnb/lottie/n;

    invoke-static {p1}, Lcom/airbnb/lottie/n;->n(Lcom/airbnb/lottie/n;)Lp/c;

    move-result-object p1

    iget-object p0, p0, Lcom/airbnb/lottie/n$a;->a:Lcom/airbnb/lottie/n;

    invoke-static {p0}, Lcom/airbnb/lottie/n;->o(Lcom/airbnb/lottie/n;)Lt/e;

    move-result-object p0

    invoke-virtual {p0}, Lt/e;->j()F

    move-result p0

    invoke-virtual {p1, p0}, Lp/c;->L(F)V

    :cond_0
    return-void
.end method
