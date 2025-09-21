.class public final synthetic Lcom/sec/android/app/camera/shootingmode/superslowmotion/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionView;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/h;->a:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionView;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/h;->a:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionView;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionView;->h(Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
