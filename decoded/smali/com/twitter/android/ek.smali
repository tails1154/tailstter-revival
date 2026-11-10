.class public final Lcom/twitter/android/ek;
.super Ljava/lang/Object;


# static fields
.field public static final OverlayImageView:[I

.field public static final OverlayImageView_overlayDrawable:I = 0x0

.field public static final TweetView:[I

.field public static final TweetView_bylineColor:I = 0x5

.field public static final TweetView_bylineSize:I = 0x4

.field public static final TweetView_contentColor:I = 0x3

.field public static final TweetView_contentSize:I = 0x2

.field public static final TweetView_dogearFavDrawable:I = 0xd

.field public static final TweetView_dogearRTDrawable:I = 0xc

.field public static final TweetView_dogearRTFavDrawable:I = 0xb

.field public static final TweetView_iconSpacing:I = 0x6

.field public static final TweetView_lineSpacingExtra:I = 0x1

.field public static final TweetView_lineSpacingMultiplier:I = 0x0

.field public static final TweetView_locationIcon:I = 0x10

.field public static final TweetView_mediaIcon:I = 0x11

.field public static final TweetView_pillTextSize:I = 0x7

.field public static final TweetView_placeholderDrawable:I = 0x8

.field public static final TweetView_profileImageBackground:I = 0x9

.field public static final TweetView_promotedPillDrawable:I = 0xf

.field public static final TweetView_replyIcon:I = 0x12

.field public static final TweetView_retweetDrawable:I = 0xa

.field public static final TweetView_topPillDrawable:I = 0xe


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010014

    aput v2, v0, v1

    sput-object v0, Lcom/twitter/android/ek;->OverlayImageView:[I

    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/twitter/android/ek;->TweetView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
        0x7f010007
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
        0x7f01000c
        0x7f01000d
        0x7f01000e
        0x7f01000f
        0x7f010010
        0x7f010011
        0x7f010012
        0x7f010013
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
