.class public final synthetic Lcom/sec/android/app/camera/layer/menu/effects/abstraction/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractColorToneTabView;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final synthetic d:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractColorToneTabView;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/d;->a:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractColorToneTabView;

    iput-object p2, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/d;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/d;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p4, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/d;->d:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/d;->a:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractColorToneTabView;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/d;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/d;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/d;->d:Landroid/widget/Button;

    invoke-static {v0, v1, v2, p0}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractColorToneTabView;->b(Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractColorToneTabView;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;)V

    return-void
.end method
