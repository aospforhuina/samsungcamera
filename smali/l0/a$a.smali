.class Ll0/a$a;
.super Ljava/lang/Object;
.source "ByteBufferGifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lw/a$a;Lw/c;Ljava/nio/ByteBuffer;I)Lw/a;
    .locals 0

    new-instance p0, Lw/e;

    invoke-direct {p0, p1, p2, p3, p4}, Lw/e;-><init>(Lw/a$a;Lw/c;Ljava/nio/ByteBuffer;I)V

    return-object p0
.end method
