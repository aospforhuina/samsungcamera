.class public final synthetic Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/b0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lo5/d0;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lo5/d0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/b0;->a:Lo5/d0;

    iput p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/b0;->b:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/b0;->a:Lo5/d0;

    iget p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/b0;->b:I

    check-cast p1, Lcom/sec/android/app/camera/layer/keyscreen/listener/CenterBackgroundWidthChangeListener;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;->y(Lo5/d0;ILcom/sec/android/app/camera/layer/keyscreen/listener/CenterBackgroundWidthChangeListener;)V

    return-void
.end method
