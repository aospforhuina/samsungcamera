.class public Lt4/d;
.super Ljava/lang/Object;
.source "Memory.java"


# direct methods
.method public static a([BILjava/nio/ByteOrder;)I
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v0, :cond_0

    add-int/lit8 p2, p1, 0x1

    .line 2
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p0, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    aget-byte p0, p0, p2

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x0

    :goto_0
    or-int/2addr p0, p1

    return p0

    :cond_0
    add-int/lit8 p2, p1, 0x1

    .line 3
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x0

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p0, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p1, v0

    aget-byte p0, p0, p2

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    goto :goto_0
.end method

.method public static b([BIILjava/nio/ByteOrder;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, v0, :cond_0

    add-int/lit8 p3, p1, 0x1

    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 2
    aput-byte v0, p0, p1

    add-int/lit8 p1, p3, 0x1

    shr-int/lit8 v0, p2, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 3
    aput-byte v0, p0, p3

    add-int/lit8 p3, p1, 0x1

    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 4
    aput-byte v0, p0, p1

    shr-int/lit8 p1, p2, 0x0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 5
    aput-byte p1, p0, p3

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p1, 0x1

    shr-int/lit8 v0, p2, 0x0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 6
    aput-byte v0, p0, p1

    add-int/lit8 p1, p3, 0x1

    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 7
    aput-byte v0, p0, p3

    add-int/lit8 p3, p1, 0x1

    shr-int/lit8 v0, p2, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 8
    aput-byte v0, p0, p1

    shr-int/lit8 p1, p2, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 9
    aput-byte p1, p0, p3

    :goto_0
    return-void
.end method
