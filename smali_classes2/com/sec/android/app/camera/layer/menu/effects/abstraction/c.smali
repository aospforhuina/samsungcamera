.class public final synthetic Lcom/sec/android/app/camera/layer/menu/effects/abstraction/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractColorToneTabView;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractColorToneTabView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/c;->a:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractColorToneTabView;

    iput-object p2, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/c;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/c;->a:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractColorToneTabView;

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/c;->b:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractColorToneTabView;->e(Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractColorToneTabView;Landroid/view/View;)V

    return-void
.end method
