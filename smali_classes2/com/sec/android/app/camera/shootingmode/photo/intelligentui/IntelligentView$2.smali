.class Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "IntelligentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->showDetailEnhancerButton(Z)V
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

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView$2;->this$0:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView$2;->this$0:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->m(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;Z)V

    return-void
.end method
