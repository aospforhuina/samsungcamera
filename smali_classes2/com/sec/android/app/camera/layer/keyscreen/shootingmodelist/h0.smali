.class public final synthetic Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/h0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/h0;->a:I

    iput p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/h0;->b:I

    iput p3, p0, Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/h0;->c:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/h0;->a:I

    iget v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/h0;->b:I

    iget p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/h0;->c:I

    check-cast p1, Lcom/sec/android/app/camera/layer/keyscreen/listener/CenterBackgroundWidthChangeListener;

    invoke-static {v0, v1, p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;->p(IIILcom/sec/android/app/camera/layer/keyscreen/listener/CenterBackgroundWidthChangeListener;)V

    return-void
.end method
