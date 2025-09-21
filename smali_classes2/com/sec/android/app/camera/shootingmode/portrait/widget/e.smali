.class public final synthetic Lcom/sec/android/app/camera/shootingmode/portrait/widget/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectList;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectList;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/e;->a:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectList;

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/e;->b:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/e;->a:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectList;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/e;->b:I

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectList;->a(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectList;ILandroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
