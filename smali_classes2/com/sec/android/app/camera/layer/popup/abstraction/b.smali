.class public final synthetic Lcom/sec/android/app/camera/layer/popup/abstraction/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/b;->a:Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/b;->a:Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->startHideAnimation()V

    return-void
.end method
