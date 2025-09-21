.class Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$3;
.super Ljava/lang/Object;
.source "FunModeContentsNavigator.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


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

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$3;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$3;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->e(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$3;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->e(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setRotation(F)V

    :cond_0
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
