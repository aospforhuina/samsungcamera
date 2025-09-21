.class public final synthetic Lcom/snap/camerakit/plugin/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/snap/camerakit/plugin/a;->a:F

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/snap/camerakit/plugin/a;->a:F

    invoke-static {p0}, Lcom/snap/camerakit/plugin/Plugin;->a(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
