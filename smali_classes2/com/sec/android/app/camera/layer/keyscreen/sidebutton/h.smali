.class public final synthetic Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/h;->a:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/h;->a:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->k(Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
