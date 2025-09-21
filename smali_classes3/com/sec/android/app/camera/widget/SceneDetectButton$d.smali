.class Lcom/sec/android/app/camera/widget/SceneDetectButton$d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SceneDetectButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/SceneDetectButton;->E(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/sec/android/app/camera/widget/SceneDetectButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/SceneDetectButton;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton$d;->c:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    iput p2, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton$d;->a:I

    iput-boolean p3, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton$d;->b:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton$d;->c:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    iget v0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton$d;->a:I

    iget-boolean p0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton$d;->b:Z

    invoke-static {p1, v0, p0}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->l(Lcom/sec/android/app/camera/widget/SceneDetectButton;IZ)V

    return-void
.end method
