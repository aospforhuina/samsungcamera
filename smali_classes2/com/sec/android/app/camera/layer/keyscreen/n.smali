.class public final synthetic Lcom/sec/android/app/camera/layer/keyscreen/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/layer/keyscreen/TabletKeyScreenView;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/layer/keyscreen/TabletKeyScreenView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/n;->a:Lcom/sec/android/app/camera/layer/keyscreen/TabletKeyScreenView;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/n;->a:Lcom/sec/android/app/camera/layer/keyscreen/TabletKeyScreenView;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/TabletKeyScreenView;->t(Lcom/sec/android/app/camera/layer/keyscreen/TabletKeyScreenView;Ljava/lang/Boolean;)V

    return-void
.end method
