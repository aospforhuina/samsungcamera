.class Lcom/sec/android/app/camera/widget/NightScreenFlash$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NightScreenFlash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/NightScreenFlash;->k(Landroid/graphics/Rect;IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sec/android/app/camera/widget/NightScreenFlash;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/NightScreenFlash;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/NightScreenFlash$b;->a:Lcom/sec/android/app/camera/widget/NightScreenFlash;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/NightScreenFlash$b;->a:Lcom/sec/android/app/camera/widget/NightScreenFlash;

    invoke-static {p1}, Lcom/sec/android/app/camera/widget/NightScreenFlash;->d(Lcom/sec/android/app/camera/widget/NightScreenFlash;)Lo5/q5;

    move-result-object p1

    iget-object p1, p1, Lo5/q5;->d:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/NightScreenFlash$b;->a:Lcom/sec/android/app/camera/widget/NightScreenFlash;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
