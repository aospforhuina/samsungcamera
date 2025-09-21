.class Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$5;
.super Ljava/lang/Object;
.source "FunModeContentsNavigator.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->initView(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$5;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$5;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->g(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;)Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$SnapListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$SnapListener;->onFunModeContentsNavigatorTouch(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$5;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    invoke-static {p0, p2}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->access$001(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
