.class public final Landroidx/work/impl/constraints/controllers/BatteryChargingController;
.super Landroidx/work/impl/constraints/controllers/ConstraintController;
.source "ContraintControllers.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/work/impl/constraints/controllers/ConstraintController<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/constraints/trackers/ConstraintTracker<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tracker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/work/impl/constraints/controllers/ConstraintController;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    return-void
.end method


# virtual methods
.method public hasConstraint(Landroidx/work/impl/model/WorkSpec;)Z
    .locals 0

    const-string p0, "workSpec"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-virtual {p0}, Landroidx/work/Constraints;->requiresCharging()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isConstrained(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/work/impl/constraints/controllers/BatteryChargingController;->isConstrained(Z)Z

    move-result p0

    return p0
.end method

.method public isConstrained(Z)Z
    .locals 0

    xor-int/lit8 p0, p1, 0x1

    return p0
.end method
