#define CSHADE_GAUSSIANBLURH

#include "cGaussianBlur.fxh"

technique CShade_HorizontalBlur < ui_tooltip = "Horizonal Gaussian blur effect"; >
{
    pass
    {
        SRGBWriteEnable = WRITE_SRGB;
        CBLEND_CREATE_STATES()

        VertexShader = CShade_VS_Quad;
        PixelShader = PS_HGaussianBlur;
    }
}
