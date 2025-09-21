.class public Lk4/r;
.super Lk4/q;
.source "RecognizerInternal_OneUI411.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lk4/n;Lk4/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lk4/q;-><init>(Landroid/content/Context;Lk4/n;Lk4/i;)V

    const-string p0, "RecognizerInternal_OneUI411"

    const-string p1, "OCR Recognizer(Internal_OneUI411) is initialized with version: 3.1.221111"

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected e(Lk4/t;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk4/q;->d()V

    .line 2
    new-instance v0, Lk4/v;

    iget-object v1, p0, Lk4/q;->a:Lk4/y;

    invoke-direct {v0, p1, v1}, Lk4/v;-><init>(Lk4/t;Lk4/y;)V

    iput-object v0, p0, Lk4/q;->b:Lk4/u;

    return-void
.end method
