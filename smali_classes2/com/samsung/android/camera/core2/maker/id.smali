.class public final synthetic Lcom/samsung/android/camera/core2/maker/id;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/camera/core2/maker/id;->a:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/maker/id;->a:I

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingCount;->a(ILjava/util/Map$Entry;)V

    return-void
.end method
