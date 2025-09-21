.class public final synthetic Lcom/sec/android/app/camera/attach/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/attach/AttachFragment;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/attach/AttachFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/attach/b;->a:Lcom/sec/android/app/camera/attach/AttachFragment;

    iput p2, p0, Lcom/sec/android/app/camera/attach/b;->b:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/attach/b;->a:Lcom/sec/android/app/camera/attach/AttachFragment;

    iget p0, p0, Lcom/sec/android/app/camera/attach/b;->b:I

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/camera/attach/AttachFragment;->g(Lcom/sec/android/app/camera/attach/AttachFragment;ILandroid/animation/ValueAnimator;)V

    return-void
.end method
