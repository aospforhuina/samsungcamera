.class public Lk4/a;
.super Ljava/lang/Object;
.source "DataConverter.java"


# instance fields
.field private a:F

.field private final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lk4/a;->a:F

    .line 3
    iput p1, p0, Lk4/a;->b:I

    return-void
.end method
