.class public Lt4/c;
.super Ljava/lang/Object;
.source "LongArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:[J

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, v0}, Lt4/c;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [J

    .line 3
    iput-object p1, p0, Lt4/c;->a:[J

    goto :goto_0

    .line 4
    :cond_0
    new-array p1, p1, [J

    iput-object p1, p0, Lt4/c;->a:[J

    .line 5
    :goto_0
    iput v0, p0, Lt4/c;->b:I

    return-void
.end method

.method public static c(II)V
    .locals 3

    if-ltz p1, :cond_0

    if-le p0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "; index="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private h(I)V
    .locals 3

    .line 1
    iget v0, p0, Lt4/c;->b:I

    add-int/2addr p1, v0

    .line 2
    iget-object v1, p0, Lt4/c;->a:[J

    array-length v2, v1

    if-lt p1, v2, :cond_2

    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    const/16 v2, 0xc

    goto :goto_0

    :cond_0
    shr-int/lit8 v2, v0, 0x1

    :goto_0
    add-int/2addr v2, v0

    if-le v2, p1, :cond_1

    move p1, v2

    .line 3
    :cond_1
    new-array p1, p1, [J

    const/4 v2, 0x0

    .line 4
    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iput-object p1, p0, Lt4/c;->a:[J

    :cond_2
    return-void
.end method


# virtual methods
.method public a(IJ)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lt4/c;->h(I)V

    .line 2
    iget v1, p0, Lt4/c;->b:I

    sub-int v2, v1, p1

    add-int/2addr v1, v0

    .line 3
    iput v1, p0, Lt4/c;->b:I

    .line 4
    invoke-static {v1, p1}, Lt4/c;->c(II)V

    if-eqz v2, :cond_0

    .line 5
    iget-object v0, p0, Lt4/c;->a:[J

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    :cond_0
    iget-object p0, p0, Lt4/c;->a:[J

    aput-wide p2, p0, p1

    return-void
.end method

.method public b(J)V
    .locals 1

    iget v0, p0, Lt4/c;->b:I

    invoke-virtual {p0, v0, p1, p2}, Lt4/c;->a(IJ)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lt4/c;->g()Lt4/c;

    move-result-object p0

    return-object p0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lt4/c;->b:I

    return-void
.end method

.method public g()Lt4/c;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt4/c;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    :try_start_1
    iget-object p0, p0, Lt4/c;->a:[J

    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    iput-object p0, v1, Lt4/c;->a:[J
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :catch_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public i()[J
    .locals 1

    iget-object v0, p0, Lt4/c;->a:[J

    iget p0, p0, Lt4/c;->b:I

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p0

    return-object p0
.end method
