.class public Ln5/z;
.super Ljava/lang/Object;
.source "ZoomCurveItem.java"


# instance fields
.field private final a:F

.field private final b:I


# direct methods
.method public constructor <init>(FI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ln5/z;->a:F

    .line 3
    iput p2, p0, Ln5/z;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Ln5/z;->b:I

    return p0
.end method

.method public b()F
    .locals 0

    iget p0, p0, Ln5/z;->a:F

    return p0
.end method
