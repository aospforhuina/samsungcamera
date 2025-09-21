.class public final Lc7/f1;
.super Ljava/lang/Object;
.source "JobSupport.kt"

# interfaces
.implements Lc7/g1;


# instance fields
.field private final a:Lc7/w1;


# direct methods
.method public constructor <init>(Lc7/w1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc7/f1;->a:Lc7/w1;

    return-void
.end method


# virtual methods
.method public c()Lc7/w1;
    .locals 0

    iget-object p0, p0, Lc7/f1;->a:Lc7/w1;

    return-object p0
.end method

.method public isActive()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
