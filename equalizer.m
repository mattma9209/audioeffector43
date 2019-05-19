a = dsp.AudioFileReader('e43.wav');
mPEQ = multibandParametricEQ(...
    'NumEQBands',10,...
    'Frequencies',[31,63,127,255,511,1000,2000,4000,8000,16000],...
    'QualityFactors',[1,1,1,1,1,1,1,1,1,1],...
    'PeakGains',[0,0,0,0,0,0,0,0,0,0],...
    'HasHighShelfFilter',true,...
    'HighShelfCutoff',14000,...
    'HighShelfSlope',0.3,...
    'HighShelfGain',-5,...
    'SampleRate',44100);
% visualize(mPEQ)
N = getNumOutputs(a);