.class public interface abstract Landroidx/work/impl/constraints/controllers/ConstraintController$OnConstraintUpdatedCallback;
.super Ljava/lang/Object;
.source "ConstraintController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/constraints/controllers/ConstraintController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnConstraintUpdatedCallback"
.end annotation


# virtual methods
.method public abstract onConstraintMet(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onConstraintNotMet(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;)V"
        }
    .end annotation
.end method
