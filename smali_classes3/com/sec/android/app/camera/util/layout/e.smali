.class public final synthetic Lcom/sec/android/app/camera/util/layout/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Landroidx/lifecycle/Observer;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/Observer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/util/layout/e;->a:Landroidx/lifecycle/Observer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/util/layout/e;->a:Landroidx/lifecycle/Observer;

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/layout/PinEdgeObserver;->a(Landroidx/lifecycle/Observer;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method
