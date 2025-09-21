.class public final synthetic Lcom/samsung/android/camera/core2/util/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/camera/core2/util/n;->a:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/util/n;->a:I

    check-cast p1, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugLevel;

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugLevel;->a(ILcom/samsung/android/camera/core2/util/DebugUtils$DebugLevel;)Z

    move-result p0

    return p0
.end method
